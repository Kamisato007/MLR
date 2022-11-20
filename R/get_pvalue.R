#' Get p values for parameter estimates in multiple linear regression model.
#'
#'
#' @param X Design matrix.
#' @param y Response values.
#'
#' @return A vector that contains p values for parameters estimates.
#' @export
#'
#' @examples
#' X = unname(model.matrix(hp~mpg+wt,data = mtcars))
#' y = mtcars$hp
#' get_pvalue(X,y)
get_pvalue <- function(X,y){
  n = nrow(X)
  p = ncol(X)
  t_stat = get_tvalue(X,y)
  p_value = 2*( 1-pt(q=abs(t_stat),(n-p)))
  return (as.vector(p_value))
}
