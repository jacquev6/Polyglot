Polyglot is a collection of examples of programs written in several programming languages.

Introduction
============

Reasons to use several programming languages in the same program:

- reuse: a new program calls an existing codebase in another language
- sharing: the same code runs on several environments
- performance: a part of a program is compiled natively for execution speed while other parts are interpreted to ease development

Vocabulary:

- the 'host' language has the execution entry point and controls the flow of execution
- the 'guest' language has a function to be called by the host

Examples
========

Python 2 -> C++
---------------

- [Hello World, using Boost.Python](./Python2/C++/HelloWorldUsingBoost/)

Python 3 -> C
-------------

- [Hello World](./Python3/C/HelloWorld/)

Python 3 -> C++
---------------

- [Hello World](./Python3/C++/HelloWorld/)
- [Hello World, using Boost.Python](./Python3/C++/HelloWorldUsingBoost/)

Javascript (in browser) -> OCaml
--------------------------------

- [Hello World](./Javascript/OCaml/HelloWorld/)
