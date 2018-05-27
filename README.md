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

- C (Native)
- C++ (Native)
- Python (Interpreted)
- OCaml (Native)
- Java (JVM)
- JavaScript (JS)

Contributions are greatly appreciated.

Why?
====

Reasons to use several programming languages in the same program:

- reuse: a new program calls an existing codebase in another language
- sharing: the same code runs on several environments
- performance: a part of a program is compiled natively for execution speed while other parts are interpreted to ease development

Examples by increasing complexity level
=======================================

The examples demonstrates some problems encountered when interfacing several languages and/or runtime environments, and some solutions!
Sometimes, several solutions are presented.

"Hello World"s
--------------

"Hello World" examples are written in a single language, but executed in a runtime environment that's not traditional for this language.

- [run a C program in JS](HelloWorlds/C_in_JS.Emscripten)
- [run a C++ program in JS](HelloWorlds/C++_in_JS.Emscripten)
- [run an OCaml program in JS](HelloWorlds/OCaml_in_JS.JsOfOCaml)

Guest language calls
--------------------

Show how to call code written in another language (the guest language), from code executed in its traditional runtime environment (the host language).

- [use an OCaml library from a JavaScript program](GuestCalls/OCaml_from_JavaScript.js_of_ocaml)
- [use a C library from a C++ program](GuestCalls/C_from_C++.extern_C)
- [use a C++ library from a C program](GuestCalls/C++_from_C.extern_C)
- use a C library from a Python program
    - [with ctypes](GuestCalls/C_from_Python.ctypes)
    - [with an extension](GuestCalls/C_from_Python.extension)
- use a C++ library from a Python program
    - [with Boost.Python](GuestCalls/C++_from_Python.boost)
    - [with an extension](GuestCalls/C++_from_Python.extension)
- [use a C library from an OCaml program](GuestCalls/C_from_OCaml.ctypes-foreign)

Host language callbacks
-----------------------

Show how the code written in guest language can, in turn, call code written in the host language.

- pass a Python callback to a C library (todo)

Resource management
-------------------

These examples show how to allocate and free resources managed by guest language.

Iterators
---------

External native libraries
-------------------------

Using native libraries in JS or JVM requires replacing them with JS/JVM implementations with compatible interfaces.

Further readings
================

CoffeScript has a [list of languages that compile to JS](https://github.com/jashkenas/coffeescript/wiki/List-of-languages-that-compile-to-JS).
