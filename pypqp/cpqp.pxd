cimport cython

cdef extern from "PQP.h":
    cdef cppclass PQP_Model:
        PQP_Model()
        BeginModel(int num_tris)
        AddTri(double * p1, double* p2, double* p3, int id)
        EndModel()

    cdef cppclass PQP_CollideResult:
        int Colliding()

    cdef int PQP_Collide(PQP_CollideResult *result,
                double R1[3][3], double T1[3], PQP_Model *o1,
                double R2[3][3], double T2[3], PQP_Model *o2,
                int flag);
#def colliding(R1, T1, PQP_Model M1, R2, T2, PQP_Model M2):
    #cdef double r1[3][3]
    #cdef double r2[3][3]
    #cdef double t1[3]
    #cdef double t2[3]
    #for i in range(3):
        #for j in range(3):
            #r1[i][j] = R1[i][j]
    #for i in range(3):
        #for j in range(3):
            #r2[i][j] = R2[i][j]
    #for i in range(3):
        #t1[i] = T1[i]
        #t2[i] = T2[i]
    ##cdef cpqp.PQP_CollideResult* result = new cpqp.PQP_CollideResult()
    #cdef cpqp.PQP_Model* m1 = M1.m
    #cdef cpqp.PQP_Model* m2 = M2.m
    #return cpqp.PQP_Collide(result, r1, t1, m1, r2, t2, m2, 2)

