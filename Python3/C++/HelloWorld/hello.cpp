#include <Python.h>

#include <iostream>

static PyObject* hello(PyObject* self, PyObject* args) {
    std::cout << "C++ says 'Hello World!'" << std::endl;
    return Py_None;
}

static PyMethodDef methods[] = {
    {"hello",  hello, METH_VARARGS, "Say hello"},
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
