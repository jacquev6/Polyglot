#include <Python.h>

static PyObject* hello(PyObject* self, PyObject* args) {
    printf("GUEST (C) says 'Hello World!'\n");
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
