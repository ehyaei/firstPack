#' @title simBrM
#'
#' @description Provides a funtions to generte 2d Brownian motions
#'
#' @param n number of steps
#' @param sigma SD of step size
#'
#' @return an nx2 matrix of positions
#' @export
#' @importFrom stats rnorm
#'
#' @examples
#' x <- simBrM(1000)
simBrM <-
  function(n, sigma=1)
  {
    stopifnot(n>=2, sigma>0)

    x <- matrix(rnorm(n*2, 0, sigma), ncol=2)
    colnames(x) <- c("x", "y")

    apply(x, 2, cumsum)
  }
