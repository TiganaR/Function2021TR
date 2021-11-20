
# Function2021TR sig

This is Tigana Runte’s repository for the STAT545B Winter 2021 function
assignment.

This repository contains a package called `sig` that provides a function
`sign_vars` that finds and displays the significant variables in a
linear model.

## Installation

You can install `sig` using

    devtools::install_github("TiganaR/Functions2021TR")

and you can then load the package by running

    library("sig")

## Example

Below I provide an example of using the function \`sign\_vars.R

``` r
library(sig)

sign_vars(iris[,1:3], as.vector(iris[,4]))
#>  Sepal.Length   Sepal.Width  Petal.Length 
#> "Significant" "Significant" "Significant"
```
