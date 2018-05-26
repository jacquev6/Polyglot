#include <Python.h>

#include "guest.h"

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
   "wrapper",
   "Say hello",
   -1,
   methods
};

PyMODINIT_FUNC PyInit_wrapper(void) {
    return PyModule_Create(&module);
}
