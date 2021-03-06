#' @title computeCor
#'
#' @name computeCor
#'
#' @aliases computeRho
#'
#' @description Computing correlation: \code{cor} (\eqn{\rho}) given \code{tvMa1CoefArray}.
#'
#' @param lag the lag
#' @param tvMa1CoefArray the tvMa1CoefArray
#'
#' @return Array \code{cor_lag(i)}, counter \code{i} corresponds to \code{tvMa1CoefArray_i = 0, 1, ..., length(tvMa1CoefArray)}.
#'
#' @examples
#' tParCount <- 10
#' lag <- 0
#' tParArray <- createTParArray(tParCount = tParCount)
#' tvMA1CoefArray <- createTVMA1CoefArray(coefFunction = sin, tParArray = tParArray)
computeCor <- function(lag,
                       tvMa1CoefArray) {
  tvMa1CoefArrayCount <- length(tvMa1CoefArray)
  corArray <- array(0, dim = tvMa1CoefArrayCount)

  if (lag == 1) {
    corArray <- tvMa1CoefArray / (1 + tvMa1CoefArray ^ 2)
  }

  if (lag == 0) {
    corArray <- rep(1, tvMa1CoefArrayCount)
  }

  corArray

}
