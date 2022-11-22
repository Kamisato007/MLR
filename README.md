
<!-- README.md is generated from README.Rmd. Please edit that file -->

# MLR

<!-- badges: start -->

[![R-CMD-check](https://github.com/Kamisato007/MLR/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/Kamisato007/MLR/actions/workflows/R-CMD-check.yaml)
[![Codecov test
coverage](https://codecov.io/gh/Kamisato007/MLR/branch/main/graph/badge.svg)](https://app.codecov.io/gh/Kamisato007/MLR?branch=main)
<!-- badges: end -->

## Introduction

### Multiple linear regression

If a single predictor X that has a linear relationship with a response
y, we can build a regression model to analyze their relationship.  
A regression model that involves more than one predictors is called a
multiple regression model.  
The model looks like this:
$$Y=\beta_{0}+\beta_{1}X_{1}+\beta_{2}X_{2}+...+\beta_{n}X_{n}+\epsilon$$  
In practice, it is widely used for prediction, as well as quantifying
the strength of the linearly association between the outcome and the
predictor variables.

### “lm” in R

The existing `stats::lm` in `R` is a commonly used function that can
help fit linear regression model.  
Combining with `summary` and `anova`, the `lm` function can obtain many
important values.(For example, we can obtain estimated $\beta$ in the
model mentioned above)

### Purpose of MLR package

This package is trying to mimic the combination of `lm`,`summary`,and
`anova` function to obtain some important values for multiple linear
regression.  
In the vignette, you can see more details and find that this package is
more efficient in some way, comparing to the built-in function in r.

## Installation

You can install the development version of MLR from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("Kamisato007/MLR", build_vignettes = T)
```

## Example

Load the package by:

``` r
library(MLR)
## basic example code
```

You can use the following code to show the vignette.

``` r
browseVignettes("MLR")
#> 没有找到小文品browseVignettes("MLR")
```
