cimport cython

cdef extern from "PQP.h":
    cdef cppclass PQP_Model:
        PQP_Model()
        int BeginModel(int num_tris)
        int AddTri(double p1[3], double p2[3], double p3[3], int idx)
        int EndModel()

    cdef cppclass PQP_CollideResult:
        int NumBVTests()
        int NumTriTests()
        double QueryTimeSecs()
        int Colliding()

    cdef cppclass PQP_DistanceResult
        double QueryTimeSecs()
        double Distance()

    cdef int PQP_Collide(PQP_CollideResult *result,
                double R1[3][3], double T1[3], PQP_Model *o1,
                double R2[3][3], double T2[3], PQP_Model *o2,
                int flag);

    cdef int PQP_Distance(PQP_DistanceResult *result,
                double R1[3][3], double T1[3], PQP_Model *o1,
                double R2[3][3], double T2[3], PQP_Model *o2,
                double rel_err,  double abs_err,
                int flag);


