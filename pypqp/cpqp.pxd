cimport cython

cdef extern from "PQP.h":
    cdef cppclass PQP_Model:
        PQP_Model()
        BeginModel(int num_tris)
        AddTri(double * p1, double* p2, double* p3, int id)
        EndModel()

       
