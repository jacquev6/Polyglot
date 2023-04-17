#include <Python.h>

#include "guest.h"

static PyObject* wrapper(PyObject* self, PyObject* args) {
    const char* host;
    if(!PyArg_ParseTuple(args, "s", &host)) {
        return NULL;
    }
    char* greetings = malloc(100 * sizeof(char));
    guest(greetings, host);

    PyObject* ret = PyUnicode_FromString(greetings);

    free(greetings);
    return ret;
}

static PyMethodDef methods[] = {
    {"wrapper",  wrapper, METH_VARARGS, "Guest"},
    {NULL, NULL, 0, NULL},
};

static struct PyModuleDef module = {
    PyModuleDef_HEAD_INIT,
    "wrapper",
    "Guest",
    -1,
    methods
};

PyMODINIT_FUNC PyInit_wrapper(void) {
    return PyModule_Create(&module);
}
