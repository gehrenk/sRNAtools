
#' Counter
#'
#'Generate count tables of sRNAs per gene from trans.out files
#'
#' @param x dataframe
#'
#' @return count table
#' @export
#'
#' @examples
#' a <-counter(test.trans)
#' head(a)
counter <- function(x){
  trans <- x[,c(1,2,3,4,5)]
  colnames(trans) <- c("seqname", "strand", "geneID", "pos", "seq")
  sense <- dplyr::filter(trans, strand=="+")
  antisense <- dplyr::filter(trans, strand=="-")
  sense.ct <- data.frame(table(sense$geneID))
  colnames(sense.ct) <- c("geneID", "sense")
  antisense.ct <- data.frame(table(antisense$geneID))
  colnames(antisense.ct) <- c("geneID", "antisense")
  merge.ct <- merge(antisense.ct, sense.ct, all=T)
  return(merge.ct)}
