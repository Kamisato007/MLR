#' Get fitted values for multiple linear regression model.
#'
#'
#' @param X Design matrix.
#' @param y Response values.
#'
#' @return A vector contains fitted values.
#' @export
#'
#' @examples
#' X = unname(model.matrix(hp~mpg+wt,data = mtcars))
#' y = mtcars$hp
#' get_yhat(X,y)
get_yhat <- function(X,y){
  beta = get_beta(X,y)
  return (as.vector(X%*%beta))
}
