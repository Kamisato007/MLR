#' Get Standard Errors for parameter estimates for
#' multiple linear regression model.
#'
#'
#' @param X Design matrix.
#' @param y Response values.
#'
#' @return A vector contains Standard Errors for parameter estimates.
#' @export
#'
#' @examples
#' X = unname(model.matrix(hp~mpg+wt,data = mtcars))
#' y = mtcars$hp
#' get_Std(X,y)
get_Std <- function(X,y){
  MSE = get_MSE(X,y)
  Var_betahat = diag(solve(t(X)%*%X))*MSE
  Std_betahat = sqrt(Var_betahat)
  return (as.vector(Std_betahat))
}
