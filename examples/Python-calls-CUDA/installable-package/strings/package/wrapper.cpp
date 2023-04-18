#include <Python.h>

#include "guest.cuh"

static PyObject* wrapper(PyObject* self, PyObject* args) {
    const char* host;
    if(!PyArg_ParseTuple(args, "s", &host)) {
        return NULL;
    }

    return PyUnicode_FromString(guest(host).c_str());
}

static PyMethodDef methods[] = {
    {"wrapper",  wrapper, METH_VARARGS, "Greet"},
    {NULL, NULL, 0, NULL},
};

static struct PyModuleDef module = {
    PyModuleDef_HEAD_INIT,
    "wrapper",
    "Greet",
    -1,
    methods
};

PyMODINIT_FUNC PyInit_wrapper(void) {
    return PyModule_Create(&module);
}
