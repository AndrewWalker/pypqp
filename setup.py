from setuptools import setup, Extension
import os
import glob
import numpy
from Cython.Build import cythonize
from Cython.Distutils import build_ext

srcs = [
    'pypqp/core.pyx',
    'pypqp/src/BV.cpp',
    'pypqp/src/Build.cpp',
    'pypqp/src/PQP.cpp',
    'pypqp/src/TriDist.cpp',
]

ext_modules = [
    Extension('core', srcs,
              include_dirs = ['pypqp', 
                              'pypqp/include',
                              numpy.get_include()],
              language='c++')
]

setup(
    name         = "pypqp",
    version      = "0.0.1",
    description  = "Cython wrapper of the Proximity Query Package",
    author       = "Andrew Walker",
    author_email = "walker.ab@gmail.com",
    license      = "MIT",
    packages     = [ 'pypqp' ],
    cmdclass     = { 'build_ext' : build_ext },
    ext_package  = 'pypqp',
    ext_modules  = ext_modules,
    classifiers  = [
        'Development Status :: 3 - Alpha',
        'Intended Audience :: Science/Research',
        'License :: OSI Approved :: BSD License',
        'License :: Free For Educational Use',
        'License :: Free For Home Use',
        'License :: Free for non-commercial use',
        'Natural Language :: English',
        'Programming Language :: Python :: 2',
        'Programming Language :: Python :: 2.7',
        'Operating System :: POSIX :: Linux',
        'Topic :: Scientific/Engineering :: Mathematics',
    ],
 
)

