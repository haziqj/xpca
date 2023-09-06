
<!-- README.md is generated from README.Rmd. Please edit that file -->

# xpca

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check](https://github.com/haziqj/xpca/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/haziqj/xpca/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

An implementation of Principal Components Analysis (PCA) specifically
designed for cross-covariance matrices. The `xpca` package provides
tools for finding the principal components that maximize the explained
variance between two sets of multivariate random variables.

## Installation

You can install the development version of xpca from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("haziqj/xpca")
```

## Usage

``` r
library(xpca)
set.seed(123)
x <- matrix(rnorm(100 * 3), nrow = 100, ncol = 3)
y <- matrix(rnorm(100 * 5), nrow = 100, ncol = 5)
xpca(x, y)
#> $singular_values
#> [1] 0.26040010 0.19322889 0.09353863
#> 
#> $u
#>            [,1]        [,2]       [,3]
#> [1,] -0.9609009  0.07517796  0.2664917
#> [2,] -0.1581545 -0.93900882 -0.3053680
#> [3,]  0.2272811 -0.33557518  0.9141841
#> 
#> $v
#>             [,1]       [,2]       [,3]
#> [1,]  0.08885207 -0.1533433 -0.6954801
#> [2,]  0.69772335  0.5801151 -0.3160890
#> [3,]  0.12965638 -0.5520606 -0.3184743
#> [4,]  0.07926167 -0.4047093 -0.2625459
#> [5,] -0.69440208  0.4139948 -0.4960232
#> 
#> $x_loadings
#>            [,1]        [,2]       [,3]
#> [1,] -0.9609009  0.07517796  0.2664917
#> [2,] -0.1581545 -0.93900882 -0.3053680
#> [3,]  0.2272811 -0.33557518  0.9141841
#> 
#> $y_loadings
#>             [,1]       [,2]       [,3]
#> [1,]  0.08885207 -0.1533433 -0.6954801
#> [2,]  0.69772335  0.5801151 -0.3160890
#> [3,]  0.12965638 -0.5520606 -0.3184743
#> [4,]  0.07926167 -0.4047093 -0.2625459
#> [5,] -0.69440208  0.4139948 -0.4960232
```
