% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sits_raster.R
\name{sits_get_raster}
\alias{sits_get_raster}
\title{Get a raster object from a raster coverage}
\usage{
sits_get_raster(raster.tb, i = NULL)
}
\arguments{
\item{raster.tb}{Raster coverage}

\item{i}{i-th element of the list to retrieve}
}
\description{
This function retrieves one or more raster objects stored in a raster coverage.
             It should be used to ensure that the raster objects are returned correctly.
}
\examples{
# Define a raster Brick and retrieve the associated object
# define the file that has the raster brick
files  <- c(system.file ("extdata/raster/mod13q1/sinop-crop-ndvi.tif", package = "sits"))
# define the timeline
data(timeline_mod13q1)
timeline <- lubridate::as_date(timeline_mod13q1$V1)
# create a raster metadata file based on the information about the files
raster_cov <- sits_coverage(files = files, name = "Sinop-crop",
                            timeline = timeline, bands = c("ndvi"))
# retrieve the raster object associated to the coverage
raster_object <- sits_get_raster(raster_cov, 1)
}
