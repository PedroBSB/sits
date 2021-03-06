% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sits_tibble_functions.R
\name{sits_mutate}
\alias{sits_mutate}
\title{Add new SITS bands.}
\usage{
sits_mutate(data.tb, ...)
}
\arguments{
\item{data.tb}{a valid sits tibble}

\item{...}{`name=value` pairs expressions. See `dplyr::mutate` help for more details.}
}
\value{
data.tb      a sits tibble with same samples and the new bands
}
\description{
Adds new bands and preserves existing in the time series of a sits tibble using dplyr::mutate function
}
\examples{
\donttest{
# Retrieve data for time series with label samples in Mato Grosso in Brazil
data (samples_MT_9classes)
# Generate a new image with the SAVI (Soil-adjusted vegetation index)
savi.tb <- sits_mutate (samples_MT_9classes, savi = (1.5*(nir - red)/(nir + red + 0.5)))
}
}
\author{
Rolf Simoes, \email{rolf.simoes@inpe.br}
}
