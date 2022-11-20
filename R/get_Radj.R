#' Get R^2 adjusted value for multiple linear regression model.
#'
#'
#' @param X Design matrix.
#' @param y Response values.
#'
#' @return The value of R^2 adjusted.
#' @export
#'
#' @examples
#' X = unname(model.matrix(hp~mpg+wt,data = mtcars))
#' y = mtcars$hp
#' get_Radj(X,y)
get_Radj <- function(X,y){
  n = nrow(X)
  p = ncol(X)
  tras = (n-1)/(n-p) # transit number for future calculation
  Radj = get_Rsquare(X,y)*tras-tras+1
  return(as.vector(Radj))
}
