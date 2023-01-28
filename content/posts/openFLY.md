---
author: "Conor Williams"
title: "Releasing OpenFLY"
date: "2023-01-23"
description: "The open framework for on-the-fly off-lattice kinetic Monte Carlo simulations."
---

My PhD has focused on the development of off-lattice kinetic Monte Carlo (OLKMC) methods to study hydrogen and carbon interstitials in metals, with the recent publication of my first paper:

```bib
@article{Williams2023,
	title        = {Accelerating off-lattice kinetic Monte Carlo simulations to predict hydrogen vacancy-cluster interactions in alpha-Fe},
	author       = {C.J. Williams and E.I. Galindo-Nava},
	year         = 2023,
	month        = jan,
	journal      = {Acta Materialia},
	publisher    = {Elsevier {BV}},
	volume       = 242,
	pages        = 118452,
	doi          = {10.1016/j.actamat.2022.118452},
	url          = {https://doi.org/10.1016/j.actamat.2022.118452}
}
```

It is finally time to release an early version of [OpenFLY](https://conorwilliams.github.io/openFLY/), a collection of C++17/20 libraries and programs to build/run massively-parallel OLKMC. It draws inspiration from the molecular dynamics packages [LAMMPS](https://www.lammps.org) and KMC package [HOOMD-blue](https://glotzerlab.engin.umich.edu/hoomd-blue/).

