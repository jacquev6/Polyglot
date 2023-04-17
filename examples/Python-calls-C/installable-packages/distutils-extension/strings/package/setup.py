from distutils.core import setup, Extension


wrapper_ext = Extension(
    "wrapper",
    sources=[
        "wrapper.c",
        "guest.c",
    ],
)

setup(
    name="wrapper",
    version="1.0",
    ext_modules=[wrapper_ext],
)
