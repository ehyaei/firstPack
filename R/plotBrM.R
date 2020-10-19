#' Plot Brownian motion
#'
#' @param x matrix with two columns
#' @param pointcolor  color of start and end points
#' @param ... passed to plot()
#'
#' @return None
#' @export
#' @importFrom graphics plot points
#'
#' @examples
#' x <- simBrM(1000)
#' plotBrM(x)
plotBrM <-
  function(x, pointcolor=c("springgreen", "violetred"), ...)
  {
    stopifnot(is.matrix(x), ncol(x)>=2, nrow(x)>=2)

    if(is.null(colnames(x))) colnames(x) <- c("x", "y")

    plot(x[,1], x[,2], xlab=colnames(x)[1], ylab=colnames(x)[2],
         type="l", las=1, ...)

    if(!is.null(pointcolor)) {
      points(x[c(1,nrow(x)), 1], x[c(1,nrow(x)), 2],
             pch=21, bg=pointcolor)
    }
  }
