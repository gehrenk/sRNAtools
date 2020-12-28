#' Barwidth
#'
#' Calculates witdth and length of names.arg for making an
#' alphabetByCycle bargraph
#'
#' @param x DNAStringSet
#'
#' @return
#' @export
#'
#' @examples
barwidth <- function(x){
  if(ncol(ShortRead::alphabetByCycle(x)) > 40 ){
    bw <- 40
  } else {
    bw <- ncol(ShortRead::alphabetByCycle(x))}
  return(bw)
}
