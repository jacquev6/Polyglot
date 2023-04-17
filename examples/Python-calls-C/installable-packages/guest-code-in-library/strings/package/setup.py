from distutils.core import setup, Extension


wrapper_ext = Extension(
    "wrapper",
    sources=[
        "wrapper.c",
    ],
    include_dirs=[
        "/polyglot/examples/Python-calls-C/installable-packages/guest-code-in-library/strings",
    ],
    library_dirs=[
        "/polyglot/examples/Python-calls-C/installable-packages/guest-code-in-library/strings",
    ],
    libraries=[
        "guest",
    ],
)

setup(
    name="wrapper",
    version="1.0",
    ext_modules=[wrapper_ext],
)
