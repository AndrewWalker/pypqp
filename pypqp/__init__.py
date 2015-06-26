from .core import *

def indexed_trimesh(pts, indices):
    xs = indices[:, 0]
    ys = indices[:, 1]
    zs = indices[:, 2]
    us = pts[xs, :]
    vs = pts[ys, :]
    ws = pts[zs, :]
    m = PQP_Model(us, vs, ws)
    return m
