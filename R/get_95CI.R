#' Get 95 percent confidence interval for multiple linear regression model
#' parameters.
#'
#' @param X Design matrix.
#' @param y Response values.
#'
#' @return A matrix that contains 95 percent C.I for model parameters.
#' @export
#'
#' @examples
#' X = unname(model.matrix(hp~mpg+wt,data = mtcars))
#' y = mtcars$hp
#' get_95CI(X,y)
get_95CI <- function(X,y){
  n = nrow(X)
  p = ncol(X)
  beta = get_beta(X,y)
  se = get_Std(X,y)
  CI_matrix = cbind(beta-qt(0.975,(n-p))*se,beta+qt(0.975,(n-p))*se)
  return (CI_matrix)
}
