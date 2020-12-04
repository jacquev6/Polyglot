*Polyglot* is a collection of examples of how to interface pieces of code written in different languages,
and/or execute code in a runtime environment that's not traditional for its language.
Calling a C++ library from a Python program, or executing OCaml code in a web browser,
are two examples amongst what *Polyglot* demonstrates. Have a look at the [examples](examples).

For the time being, it focuses on the following runtime environments:

- Native: code compiled for the native CPU
- Interpreted: code run by an interpreter, itself compiled for the native CPU
- Web browser and Node.js (below, JS): code translated to JavaScript and run by an interpreter un a JavaScript environment

And the following languages (with their traditional runtime environment):

- [C and C++](http://en.cppreference.com/w/) (Native)
- [Python 3](https://www.python.org/) (Interpreted)
- [OCaml](https://ocaml.org/) (Native)
- [JavaScript](https://developer.mozilla.org/en-US/docs/Web/JavaScript) (JS)

Questions? Remarks? Bugs? Want to contribute? [Open an issue](https://github.com/jacquev6/Polyglot/issues)!

Why?
====

Reasons to use several programming languages in the same program:

- reuse: a new program calls an existing code base in another language
- sharing: the same code runs on several environments
- performance: a part of a program is compiled natively for execution speed while other parts are interpreted to ease development

Running the examples
====================

To run all the examples provided in this project, you need a reasonably recent version of Bash (other shells might work but are not supported), and a reasonably recent version of Docker.

Then `./run.sh` should run each example in Docker containers.
The first time you run it, it will download and install many things in Docker images; be patient.
You may want to use the `--verbose` flag to see what's going on.
You can also limit the scope that you run by passing arguments to the script, *e.g.* `./run.sh examples/C-runs-in-JS`.

Code organization
=================

The `shared` directory contains code that doesn't change from one example to the other.
For example, this could be the legacy code you're trying to use as a guest.
This organization shows that it can be used as-is (through a wrapper though).

The `examples` directory contains code specific to each example. Each example contains:

- the source code specific to that example
- symbolic links to the shared files used in that example
- a `build-and-run.sh` shell script to... build that example and run it

The tools used in `build-and-run.sh` are installed in a `Dockerfile` found somewhere up the directory hierarchy.
For example, the `Dockerfile` used to run example `examples/C++-calls-C/extern-C/integers` is `examples/C++-calls-C/Dockerfile`.

Examples are classified by several criteria captured by each directory level.
The first level tells the language(s) and execution environment (*e.g.* `C++-calls-C`, `OCaml-runs-in-JS`), the second level is the method used (*e.g.* `C-compiled-as-C++`), and the next levels are variants (see below).

Variants
========

Variants in `examples` take their names from variants in `shared`. Each variant can be seen as a collection of examples. Some variants are closely related (*e.g.* "Calling a guest language" below), and some are mostly independent.

Running in unusual environments
-------------------------------

The `X-runs-in-E/hello` variant is the simplest way to demonstrate running code in a non-traditional environment: displaying a simple "Hello" message.

Calling a guest language
------------------------

The simplest way to demonstrate a host language calling a function written in a guest language is to use a function that takes no argument and returns nothing (`void guest()` in C/C++). This is the `X-calls-Y/side-effect` variant.

The `X-calls-Y/integers` variant is slightly more sophisticated as it involves passing integer arguments to the guest and returning an integer to the host.

The `X-calls-Y/callback` variant is more advanced and shows how the guest code can call a function (a *callback*) passed in by the host code.
