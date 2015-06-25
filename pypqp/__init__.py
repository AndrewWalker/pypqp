from .core import *

def model_from_indices(pts, indices):
    xs = indices[:, 0]
    ys = indices[:, 1]
    zs = indices[:, 2]
    us = pts[xs, :]
    vs = pts[ys, :]
    ws = pts[zs, :]
    m = PQP_Model(us, vs, ws)
    return m

#4x3
pts = [
        [0., 0., 0.],
        [1., 0., 0.],
        [1., 1., 0.],
        [0., 1., 0.]
]
pts = np.array(pts)

#2x3
inds = [
        [0, 1, 2],
        [2, 3, 0]
]
inds = np.array(inds)

print model_from_indices(pts, inds)
