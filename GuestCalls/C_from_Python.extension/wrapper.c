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

#if PY_VERSION_HEX >= 0x03000000

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

#else

PyMODINIT_FUNC initwrapper(void) {
    (void) Py_InitModule("wrapper", methods);
}

#endif
