from setuptools import setup, Extension
import os
import glob
from Cython.Build import cythonize
from Cython.Distutils import build_ext

def read(filename):
    path = os.path.join(os.path.dirname(__file__), filename)
    contents = open(path).read()
    return contents

srcs = [
    'pypqp/pqp.pyx',
    'pypqp/src/BV.cpp',
    'pypqp/src/Build.cpp',
    'pypqp/src/PQP.cpp',
    'pypqp/src/TriDist.cpp',
]

ext_modules = [
    Extension('_pypqp', srcs,
              include_dirs = ['pypqp/include'],
              language='c++')
]

setup(
    name         = "pypqp",
    version      = "0.0.1",
    description  = "Cython wrapper of the Proximity Query Package",
    long_description = read('README.rst'),
    author       = "Andrew Walker",
    author_email = "walker.ab@gmail.com",
    license      = "MIT",
    cmdclass     = { 'build_ext' : build_ext },
    ext_modules  = ext_modules,
)

