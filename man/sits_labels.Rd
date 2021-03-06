% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sits_labels.R
\name{sits_labels}
\alias{sits_labels}
\title{returns the labels' count of a sits table}
\usage{
sits_labels(data.tb)
}
\arguments{
\item{data.tb}{a valid sits table}
}
\value{
result.tb  a tibble with the names of the labels and its absolute and relative frequency
}
\description{
returns the labels and its respective counting and frequency.
}
\examples{
# read a tibble with 400 samples of Cerrado and 346 samples of Pasture
data(cerrado_2classes)
# print the labels
sits_labels (cerrado_2classes)

}
\author{
Rolf Simoes, \email{rolf.simoes@inpe.br}
}
