#' ANOVA table values
#'
#' Get the anova table values
#' @param X Design matrix.
#' @param y Response values.
#'
#' @return A matrix that contains values for anova table. The first column
#' is the degree of freedom. The second column is the Sum of Squares.
#' The third column is the Mean Sum of Squares. The fourth column is the F
#' values. The last column is the p value.
#' @export
#'
#' @examples
#' X = unname(model.matrix(hp~mpg+wt,data = mtcars))
#' y = mtcars$hp
#' get_anova(X,y)
get_anova <- function(X,y){
  n = nrow(X)
  p = ncol(X)
  # get degree of freedom
  dfSSY = n-1
  dfSSE = n-p
  df_all = c(rep(1,p-1),dfSSE)


  # Get Sum of Squares
  SSY = sum((y-mean(y))^2)
  SSE = sum((y-get_yhat(X,y))^2)
  SSR = SSY - SSE

  sub_SSR_all = c()
  last_SSR = 0
  for (i in 1:(p-1)){
    sub_SSE =  sum((y-get_yhat(X[,1:(i+1)],y))^2)
    sub_SSR = SSY - sub_SSE
    SSR = sub_SSR - last_SSR
    last_SSR = sub_SSR
    sub_SSR_all = c(sub_SSR_all,SSR)
  }
  SS_all = c(sub_SSR_all,SSE)

  # Mean Square Error
  ME_all = SS_all/df_all

  # get F value
  F = ifelse(ME_all/ME_all[length(ME_all)]==1,NA,ME_all/ME_all[length(ME_all)])
  # get p value
  pvalue = 1-pf(F,rep(1,p-1),dfSSE)

  aov_table = unname(cbind(df_all,SS_all,ME_all,F,pvalue))

  return(aov_table)
}

