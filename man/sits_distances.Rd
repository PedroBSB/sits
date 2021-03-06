% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sits_distances.R
\name{sits_distances}
\alias{sits_distances}
\title{Use time series values from a sits tibble as distances for training patterns}
\usage{
sits_distances(data.tb, adj_fun = sits_adjust())
}
\arguments{
\item{data.tb}{SITS tibble with original data}

\item{adj_fun}{Adjustment function to be applied to the data}
}
\value{
distances.tb  a tibble where columns have the reference label and the time series values as distances
}
\description{
This function allows using a set of labelled time series as
input to the machine learning models. The attributes used to train the model
are the series themselves. This function extracts the time series from a SITS tibble
and "spreads" them in time to produce a tibble with distances. It needs an additional
function that adjusts the values of the time series to meet the criteria of
machine learning methods, since most ML methods do not allow for negative data.
}
\examples{
# Retrieve the set of samples for the Cerrado and Pasture classes
data(cerrado_2classes)
# estimate distances from the data
distances.tb <- sits_distances(cerrado_2classes)

}
\author{
Rolf Simoes, \email{rolf.simoes@inpe.br}

Gilberto Camara, \email{gilberto.camara@inpe.br}
}
