#' Get Mean Square Error for multiple linear regression model.
#'
#'
#' @param X Design matrix.
#' @param y Response values.
#'
#' @return The value of mean square error.
#' @export
#'
#' @examples
#' X = unname(model.matrix(hp~mpg+wt,data = mtcars))
#' y = mtcars$hp
#' get_MSE(X,y)
get_MSE <- function(X,y){
  n = nrow(X)
  p = ncol(X)
  yhat = get_yhat(X,y)
  epsilonhat = y - yhat ## residual
  MSE = t(epsilonhat)%*%epsilonhat/(n-p)
  return (as.vector(MSE))
}
