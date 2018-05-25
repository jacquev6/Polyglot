#include <Python.h>

#include "../../guests/C++/hello.hpp"

static PyObject* hello_python(PyObject* self, PyObject* args) {
    hello();
    return Py_None;
}

static PyMethodDef methods[] = {
    {"hello",  hello_python, METH_VARARGS, "Say hello"},
    {NULL, NULL, 0, NULL},
};

static struct PyModuleDef module = {
   PyModuleDef_HEAD_INIT,
   "hello",
   "Say hello",
   -1,
   methods
};

PyMODINIT_FUNC PyInit_hello(void) {
    return PyModule_Create(&module);
}
