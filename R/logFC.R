#' logFC
#'
#'calculate logFC from cuffdiff  gene_exp.diff files
#'
#' @param x dataframe
#'
#' @return dataframe with log FCs
#' @export
#'
#' @examples
#' a <- logFC(test.sig)
#' head(a)
logFC <- function(x){
  x <- x[,c(1, 4, 5, 6, 8, 9, 12, 13, 14)]
  colnames(x) <- gene.sig.names
  a <- data.frame(x=3, y=1:length(x$fpkm1))
  a[,1] <- round(x$fpkm1, digits=2) + 0.01
  a[,2] <- round(x$fpkm2, digits=2) + 0.01
  a[,3] <- round(log(a[,1]/a[2]), digits=2)
  colnames(a) <- c("fpkm1", "fpkm2", "logFC")
  b <- cbind(x[,1:4], a, x[,7:9])
  return(b)}
