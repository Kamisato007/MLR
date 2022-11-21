#' Summary table values for multiple linear regression
#'
#' Get the summary table values for coefficient
#'
#' @param X Design matrix.
#' @param y Response values.
#'
#' @return A matrix that contains coefficient values for summary table.
#' The first column is the beta. The second column is the Standard Error for beta.
#' The third column is the t value for beta. The fourth column is the p value
#' for beta.
#' @export
#'
#' @examples
#' X = unname(model.matrix(hp~mpg+wt,data = mtcars))
#' y = mtcars$hp
#' get_coef_table(X,y)
get_coef_table <- function(X,y){
  return(cbind(get_beta(X,y),get_Std(X,y),
               get_tvalue(X,y),get_pvalue(X,y)))
}
