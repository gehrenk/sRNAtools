#' Alph
#'
#'Create a barplot showing base frequency at each nt position
#'
#' @param x DNAStringSetload
#'
#' @return
#' @export
#' @import graphics
#' @examples
#' alph(test.dss)
alph <- function(x){
  par(mar=c(5.1, 4.1, 4.1, 8.1), xpd=inTRUE)
  barplot(ShortRead::alphabetByCycle(x)[,1:barwidth(x)], col=cols, space=0, cex.names=1.4,
          names.arg=1:barwidth(x), cex.axis=1.5, ylab="Frequency", xlab="position", cex.lab=1.5)
  legend(barwidth(x), length(x), bases, fill=cols, cex=1.3)}
