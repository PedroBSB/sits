% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sits_cluster.R
\name{sits_cluster}
\alias{sits_cluster}
\title{Cuts a cluster tree produced by sits_dendrogram}
\usage{
sits_cluster(data.tb, dendro.obj, k = NULL, height = NULL)
}
\arguments{
\item{data.tb}{a tibble with input data of dtwclust.}

\item{dendro.obj}{a dendrogram object returned from \code{\link[sits]{sits_dendrogram}}.}

\item{k}{the desired number of clusters}

\item{height}{the desired height to cut the dendrogram. At least one of k or height must be specified, k overrides height if both are given.}
}
\value{
result.tb       a SITS tibble with the clusters or clusters' members
}
\description{
reads a list of clusters provided by the dtwclust
package,  and produces a sits tibble with an added "cluster" column
}
\examples{
\donttest{
# Load the "dtwclust" package
library(dtwclust)
# load a simple data set with two classes
data(cerrado_2classes)
# calculate the dendrogram
dendro.obj <- sits_dendrogram (cerrado_2classes, bands = c("ndvi"))
# include the cluster info in the SITS tibble
clustered.tb <- sits_cluster (cerrado_2classes, dendro.obj, k = 6)
}

}
\references{
"dtwclust" package (https://CRAN.R-project.org/package=dtwclust)
}
\author{
Rolf Simoes, \email{rolf.simoes@inpe.br}
}
