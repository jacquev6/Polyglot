#include <Python.h>

#include "guest.hpp"

static PyObject* wrapped_greet(PyObject* self, PyObject* args) {
    const char* guest;
    if(!PyArg_ParseTuple(args, "s", &guest)) {
        return NULL;
    }
    std::string greetings = greet(guest);

#if PY_VERSION_HEX >= 0x03000000
    return PyUnicode_FromString(greetings.c_str());
#else
    return PyString_FromString(greetings.c_str());
#endif
}

static PyMethodDef methods[] = {
    {"greet",  wrapped_greet, METH_VARARGS, "Greet"},
    {NULL, NULL, 0, NULL},
};

#if PY_VERSION_HEX >= 0x03000000

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

#else

PyMODINIT_FUNC initwrapper(void) {
    (void) Py_InitModule("wrapper", methods);
}

#endif
