# distutils: language = c++

cimport cython
cimport cpqp

cdef class PQP_Model:
    cdef cpqp.PQP_Model* m
    
    def __cinit__(self):
        self.m = new cpqp.PQP_Model()
    
    def __dealloc__(self):
        del self.m
    
        
