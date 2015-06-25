# distutils: language = c++
cimport cython
import numpy as np
cimport numpy as np
cimport cpqp

DTYPE = np.double
ctypedef np.double_t DTYPE_t

cdef class PQP_Model:
    cdef cpqp.PQP_Model* m
    
    def __cinit__(self):
        self.m = new cpqp.PQP_Model()
    
    def __dealloc__(self):
        del self.m

    def __init__(self, np.ndarray[DTYPE_t, ndim=2] tris):
        pass

def colliding(R1, T1, PQP_Model m1, R2, T2, PQP_Model m2):
    cdef double r1[3][3]
    cdef double r2[3][3]
    cdef double t1[3]
    cdef double t2[3]
    for i in range(3):
        for j in range(3):
            r1[i][j] = R1[i][j]
    for i in range(3):
        for j in range(3):
            r2[i][j] = R2[i][j]
    for i in range(3):
        t1[i] = T1[i]
        t2[i] = T2[i]
    cdef cpqp.PQP_CollideResult* res = new cpqp.PQP_CollideResult()
    cpqp.PQP_Collide(res, r1, t1, m1.m, r2, t2, m2.m, 2)
    #return 0
    #cdef cpqp.PQP_CollideResult* result = new cpqp.PQP_CollideResult()
    #cdef cpqp.PQP_Model* m2 = M2.m
    #return cpqp.PQP_Collide(result, r1, t1, m1, r2, t2, m2, 2)

