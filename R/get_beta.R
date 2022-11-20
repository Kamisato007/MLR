#' Get parameter estimates for multiple linear regression model.
#'
#'
#' @param X Design matrix.
#' @param y Response values.
#'
#' @return A vector that contains parameters estimates.
#' @export
#'
#' @examples
#' X = unname(model.matrix(hp~mpg+wt,data = mtcars))
#' y = mtcars$hp
#' get_beta(X,y)
get_beta <- function(X,y){
  return (as.vector(solve(t(X)%*%X)%*%t(X)%*%y))
}
