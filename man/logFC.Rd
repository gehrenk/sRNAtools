% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/logFC.R
\name{logFC}
\alias{logFC}
\title{logFC}
\usage{
logFC(x)
}
\arguments{
\item{x}{dataframe}
}
\value{
dataframe with log FCs
}
\description{
calculate logFC from cuffdiff  gene_exp.diff files
}
\examples{
a <- logFC(test.sig)
head(a)
}
