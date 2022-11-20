#' Get R^2 for multiple linear regression model.
#'
#'
#' @param X Design matrix.
#' @param y Response values.
#'
#' @return The value of R^2
#' @export
#'
#' @examples
#' X = unname(model.matrix(hp~mpg+wt,data = mtcars))
#' y = mtcars$hp
#' get_Rsquare(X,y)
get_Rsquare <- function(X,y){
  n = nrow(X)
  p = ncol(X)
  SSE = get_MSE(X,y)*(n-p)
  SSY = sum((y-mean(y))^2)
  Rsquare = 1- SSE/SSY
  return (as.vector(Rsquare))
}
