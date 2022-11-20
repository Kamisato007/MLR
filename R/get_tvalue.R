#' Get t values for parameter estimates in multiple linear regression model.
#'
#'
#' @param X Design matrix.
#' @param y Response values.
#'
#' @return A vector contains t values for parameter estimates.
#' @export
#'
#' @examples
#' X = unname(model.matrix(hp~mpg+wt,data = mtcars))
#' y = mtcars$hp
#' get_tvalue(X,y)
get_tvalue <- function(X,y){
  beta = get_beta(X,y)
  se = get_Std(X,y)
  return (as.vector(beta/se))
}
