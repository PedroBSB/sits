% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sits_dendrogram.R
\name{sits_dendrogram}
\alias{sits_dendrogram}
\title{Compute a dendrogram using hierarchical clustering}
\usage{
sits_dendrogram(data.tb, bands = NULL, dist_method = "dtw_basic",
  linkage = "ward.D2", ...)
}
\arguments{
\item{data.tb}{A SITS tibble to be used to generate the dendrogram.}

\item{bands}{a vector the bands to be clusterized.}

\item{dist_method}{A supported distance from proxy's dist, e.g. \code{TWDTW}.}

\item{linkage}{the agglomeration method to be used. Any `hclust` method (see `hclust`) Default is 'ward.D2'..}

\item{...}{any additional parameters to be passed to dtwclust::tsclust() function}
}
\value{
dendro.obj     a full dendrogram tree for data analysis
}
\description{
Cluster time series in hierarchical mode. Hierarchical clustering, as its name suggests,
is an algorithm that tries to create a hierarchy of groups in which, as the level in the hierarchy increases, clusters are created by merging
the clusters from the next lower level, such that an ordered sequence of groupings is obtained.
The similarity measure used to group time series in a cluster is the dtw metric.
The procedure is deterministic, so it will always give the same
result for a chosen set of similarity measures (see \code{\link[dtwclust]{tsclust}}).
}
\examples{
\donttest{
# Load the "dtwclust" package
library (dtwclust)
# load a simple data set with two classes
data(cerrado_2classes)
# calculate the dendrogram
clusters <- sits_dendrogram (cerrado_2classes, bands = c("ndvi", "evi"))
# plot the dendrogram
sits_plot_dendrogram (cerrado_2classes, clusters)
}
}
\references{
`dtwclust` package (https://CRAN.R-project.org/package=dtwclust)
}
\author{
Rolf Simoes, \email{rolf.simoes@inpe.br}

Gilberto Camara, \email{gilberto.camara@inpe.br}
}
