#' This function returns the predictor variables that are statistically significant in a linear model.
#'
#' @param x A data frame of the dependent variable
#' @param x A vector of the independent variables
#' @param alpha A numeric value between 0 and 1 to be the p.value threshold
#' @return A vector identifying which variables that have a p value < alpha in in a linear model
#' @examples
#' sign_vars(iris[,1:3], iris[,4])) #error = TRUE
#' sign_vars(iris[,1:3], as.vector(iris[,4]))
#' @export
#'
sign_vars <- function(dependents = data.frame(), independent = vector(), alpha = 0.05){
  if(!is.data.frame(dependents)){
    stop('The dependent variables must be inside a data frame.')
  }
  if(!is.vector(independent)){
    stop('The independent variable must be a vector.')
  }
  if(nrow(dependents) < 5 | length(independent) < 5){
    stop('You do not have information enought to run a model. Please, consider to use another technique')
  }

  importants = rep("Not significant", ncol(dependents))
  names(importants) = names(dependents)
  for (i in 1:ncol(dependents)){
    p.value <- summary(lm(independent ~ dependents[,i]))$coefficients[2,4]
    if(p.value < alpha) importants[i] = "Significant"
  }
  return(importants)
}
