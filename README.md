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

Todo (not exhaustive)
=====================

Interpreted:

- http://www.swig.org/
- C/C++ -> Python
- Python -> C/C++ using https://cffi.readthedocs.org/en/latest/

Browser:

- HTML/Javascript -> Python (http://pyjs.org/ https://github.com/rusthon/Rusthon http://www.brython.info/ http://www.skulpt.org/)
- HTML/Javascript -> Java (https://en.wikipedia.org/wiki/Google_Web_Toolkit)
- HTML/Javascript -> Coffescript
- OCaml -> Javascript (JsOfOCaml.Unsafe.call)

JVM:

- https://en.wikipedia.org/wiki/List_of_JVM_languages
