=====
pypqp
=====

This code is a Cython wrapper of a very small subset of the functionality in
the `Proximity Query Package <http://gamma.cs.unc.edu/SSV/>`_.  


Installation
============

The latest development version of this package can be installed from github

.. code-block:: console

    $ pip install git+git://github.com/AndrewWalker/pypqp

Usage
=====

This snippet shows how to test whether two geometries subject to rotations and
translations intersect.

.. code-block:: python

    import numpy as np
    import pypqp

    pts = np.array([
        [0., 0., 0.],
        [1., 0., 0.],
        [1., 1., 0.],
        [0., 1., 0.]
    ])
    inds = np.array([
        [0, 1, 2],
        [2, 3, 0]
    ])
    rotation = np.identity(3)
    translation = 0.9 * np.ones(3)
    geometry = pypqp.indexed_trimesh(pts, inds)

    pypqp.colliding(rotation, np.zeros(3), geometry, 
                    rotation, translation, geometry)

Contributing
============

Feedback, bug reports, and suggestions for improvements are welcome, through
the projects `github issue tracker <https://github.com/AndrewWalker/pypqp/issues>`_


Copyright and License
=====================

pypqp is distributed under a 3-clause `BSD license <LICENSE>`_

This wrapper includes parts of PQP, the Proximity Query Package, Copyright 1999
University of North Carolina at Chapel Hill.  The `PQP license <LICENSE.pqp>`_
only permits use for non-commericial purposes. 


