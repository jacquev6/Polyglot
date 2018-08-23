*Polyglot* is a collection of examples of how to interface pieces of code written in different languages,
and/or execute code in a runtime environment that's not traditional for its language.
Calling a C++ library from a Python program, or executing OCaml code in a web browser,
are two examples amongst what *Polyglot* demonstrates.

For the time being, it focuses on the following runtime environments:

- Native: code compiled for the native CPU
- Interpreted: code interpreted by an interpreter compiled for the native CPU
- JVM: code compiled into bytecode interpreted by a JVM
- Web browser and Node.js (below, JS): code translated to JavaScript

And the following languages (with their traditional runtime environment):

- [C and C++](http://en.cppreference.com/w/) (Native)
- [Python](https://www.python.org/) (Interpreted)
- [OCaml](https://ocaml.org/) (Native)
- [Java](https://java.com/) (JVM)
- [JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript) (JS)

Contributions are greatly appreciated.

Why?
====

Reasons to use several programming languages in the same program:

- reuse: a new program calls an existing code base in another language
- sharing: the same code runs on several environments
- performance: a part of a program is compiled natively for execution speed while other parts are interpreted to ease development

Examples by increasing complexity level
=======================================

The examples demonstrates some problems encountered when interfacing several languages and/or runtime environments, and some solutions!
Sometimes, several solutions are presented.

"Hello World"s
--------------

"Hello World" examples are written in a single language, but executed in a runtime environment that's not traditional for this language.
This is most often achieved by some sort of cross-compilation.

### Running on JS environment

To run in [node.js](https://nodejs.org/), a program must be translated to JavaScript.

[CoffeScript](https://coffeescript.org/) maintains a [list of languages that compile to JavaScript](https://github.com/jashkenas/coffeescript/wiki/List-of-languages-that-compile-to-JS).

#### C and C++

[Emscripten](http://emscripten.org/) translates the [LLVM](http://llvm.org/) bitcode to JavaScript.
It can be used to translate any language with an LLVM-based compiler.

- [**example**: run a C program in JS, using Emscripten](HelloWorlds/C_in_JS.Emscripten)
- [**example**: run a C++ program in JS, using Emscripten](HelloWorlds/C++_in_JS.Emscripten)

#### OCaml

[Js_of_ocaml](http://ocsigen.org/js_of_ocaml/) translates the OCaml bytecode to JavaScript.

- [**example**: run an OCaml program in JS, using Js_of_ocaml](HelloWorlds/OCaml_in_JS.js_of_ocaml)

The latest commit in [oBrowser](https://github.com/ocsigen/obrowser) dates from 2011.
Ocsigen seems to have chosen Js_of_ocaml, so I'm not going to try it.

[Ocamljs](https://github.com/jaked/ocamljs) seems unmaintained as well (last commit in 2010).

<!--@todo Evaluate [BuckleScript](https://bucklescript.github.io/).-->

#### Python

[Many translators](https://github.com/jashkenas/coffeescript/wiki/List-of-languages-that-compile-to-JS#python) need to be evaluated.

- [**example**: run a Python program in JS, using JavaScripthon](HelloWorlds/Python_in_JS.JavaScripthon)
- [**example**: run a Python program in JS, using Transcrypt](HelloWorlds/Python_in_JS.Transcrypt)

Guest language calls
--------------------

Show how to call code written in another language (the guest language), from code executed in its traditional runtime environment (the host language).

The guest language can either be compiled as usual and executed via a foreign call (e.g. a Python extension written in C),
or it can be translated to the host language's runtime environment (e.g. using Js_of_ocaml).

### C and C++

C and C++ have very similar tool chains, and C is mostly a subset of C++, but they are not directly binary-compatible.
In particular, they have different [calling convention](https://en.wikipedia.org/wiki/Calling_convention)
and [name mangling](https://en.wikipedia.org/wiki/Name_mangling).
This is referred globally as [linkage](http://en.cppreference.com/w/cpp/language/language_linkage).

Probably the simplest strategy to make C and C++ codes interact is to (re-)compile everything using a C++ compiler.

- [**example**: call C code from a C++ program, compiling C code with C++ compiler](GuestCalls/C_from_C++.C_as_C++)
- [**example**: call C++ code from a C program, compiling C code with C++ compiler](GuestCalls/C++_from_C.C_as_C++)

The next thing is to use `extern "C"`, which changes the linkage of a portion of the program.
This allows calling a pre-compiled library.

- [**example**: call a C library from a C++ program, using `extern "C"`](GuestCalls/C_from_C++.extern_C)
- [**example**: call a C++ library from a C program, using `extern "C"`](GuestCalls/C++_from_C.extern_C)

### Python host

[ctypes](https://docs.python.org/3/library/ctypes.html) implements dynamic loading of C libraries.
It allows calling a pre-compiled C library purely in Python.

- [**example**: call a C library from a Python program, using ctypes](GuestCalls/C_from_Python.ctypes)

<!-- @todo call a C++ library using ctypes -->

Python can also be [extended](https://docs.python.org/3/extending/extending.html) in C/C++.
The [Boost.Python](https://www.boost.org/doc/libs/1_67_0/libs/python/doc/html/index.html) library can be helpful.

- [**example**: call a C library from a Python program, with a plain extension](GuestCalls/C_from_Python.extension)
- [**example**: call a C++ library from a Python program, with a plain extension](GuestCalls/C++_from_Python.extension)
- [**example**: call a C++ library from a Python program, using Boost.Python](GuestCalls/C++_from_Python.Boost)

### OCaml host

[ctypes](https://github.com/ocamllabs/ocaml-ctypes) allows calling a pre-compiled C library purely in OCaml.

- [**example**: call a C library from an OCaml program, using ctypes](GuestCalls/C_from_OCaml.ctypes)

OCaml can also be [extended](http://caml.inria.fr/pub/docs/manual-ocaml/intfc.html) in C.

- [**example**: call a C library from an OCaml program, with an extension](GuestCalls/C_from_OCaml.extension)

### JavaScript host

Some languages can be translated to JavaScript.
This is the only way to run guest code in a web browser.
<!-- @todo In node.js however, JavaScript can be extended -->

#### OCaml guest

- [**example**: call OCaml code from a JavaScript program, using Js_of_ocaml](GuestCalls/OCaml_from_JavaScript.js_of_ocaml)

#### Python guest

- [**example**: call Python code from a JavaScript program, using Transcrypt](GuestCalls/Python_from_Javascript.Transcrypt)

Host language callbacks
-----------------------

Show how the code written in guest language can, in turn, call code written in the host language.

- [**example**: pass a Python callback to a C++ library, using Boost.Python](HostCallbacks/C++_from_Python.Boost)
- [**example**: pass a JavaScript callback to a Python library, using Transcrypt](HostCallbacks/Python_from_JavaScript.Transcrypt)

<!--
@todo Resource management
-------------------

These examples show how to allocate and free resources managed by guest language.

@todo Iterators
---------

@todo External native libraries
-------------------------

Using native libraries in JS or JVM requires replacing them with JS/JVM implementations with compatible interfaces.
-->

<!-- @todo Talk about Cordova and its plugins architecture -->
