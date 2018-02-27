mistnet: Structured prediction with neural networks in R
=========

[![DOI](https://zenodo.org/badge/doi/10.5281/zenodo.12423.png)](http://dx.doi.org/10.5281/zenodo.12423)
[![Travis-CI Build Status](https://travis-ci.org/davharris/mistnet.svg?branch=master)](https://travis-ci.org/davharris/mistnet)

Mistnet is an R package that produces probability densities over multivariate outcomes.  Ecologists can use it to define probability densities over possible species assemblages.

Mistnet models are *stochastic* neural networks, meaning that they include stochastic latent variables (like random effects) that account for correlations among the outcome variables that cannot be explained by the inputs.

The model uses a Generalized Expectation Maximization approach to model fitting (maximized penalized likelihood), as described in [this paper](http://www-etud.iro.umontreal.ca/~goodfeli/sfnn_wk.pdf) by Tang and Salakhutdinov at ICML 2013.
