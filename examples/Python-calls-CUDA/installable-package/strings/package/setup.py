from distutils.core import setup, Extension
from distutils.command.build_ext import build_ext
import os


# Solution extracted from https://stackoverflow.com/a/13300714/905845

def customize_compiler_for_nvcc(self):
    self.src_extensions.append(".cu")

    default_compiler_so = self.compiler_so
    default_compile = self._compile

    def _compile(obj, src, ext, cc_args, extra_postargs, pp_opts):
        if os.path.splitext(src)[1] == ".cu":
            self.set_executable("compiler_so", "nvcc")
            postargs = extra_postargs["nvcc"]
        else:
            postargs = extra_postargs["gcc"]

        default_compile(obj, src, ext, cc_args, postargs, pp_opts)
        self.compiler_so = default_compiler_so

    self._compile = _compile

class custom_build_ext(build_ext):
    def build_extensions(self):
        customize_compiler_for_nvcc(self.compiler)
        build_ext.build_extensions(self)

wrapper_ext = Extension(
    "wrapper",
    sources=[
        "wrapper.cpp",
        "guest.cu",
    ],
    library_dirs=["/usr/local/cuda-12.1/targets/x86_64-linux/lib"],
    libraries=["cudart"],
    runtime_library_dirs=["/usr/local/cuda-12.1/targets/x86_64-linux/lib"],
    # Non-standard: the dict is accessed in `customize_compiler_for_nvcc`
    # to get the standard form for `extra_compile_args`
    extra_compile_args={
        "gcc": [],
        "nvcc": ["-Xcompiler", "-fPIC"],
    },
)

setup(
    name="wrapper",
    version="1.0",
    ext_modules=[wrapper_ext],
    cmdclass={"build_ext": custom_build_ext},
)
