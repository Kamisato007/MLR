#' Get F statistics with degrees of freedom
#' for multiple linear regression model.
#'
#'
#' @param X Design matrix.
#' @param y Response values.
#'
#' @return A vector that contains F statistics with degrees of freedom.
#' @export
#'
#' @examples
#' X = unname(model.matrix(hp~mpg+wt,data = mtcars))
#' y = mtcars$hp
#' get_F(X,y)
get_F <- function(X,y){
  n = nrow(X)
  p = ncol(X)
  MSE = get_MSE(X,y)
  MSR = (sum((y-mean(y))^2)-MSE*(n-p))/(p-1)
  F = MSR/MSE
  return (c(F,(p-1),(n-p)))
}
