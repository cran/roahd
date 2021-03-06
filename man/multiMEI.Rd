% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/multivariate_depths.R
\name{multiMEI}
\alias{multiMEI}
\alias{multiMEI.mfData}
\alias{multiMEI.default}
\title{Modified Epigraph Index for multivariate functional data}
\usage{
multiMEI(Data, weights = "uniform")

\method{multiMEI}{mfData}(Data, weights = "uniform")

\method{multiMEI}{default}(Data, weights = "uniform")
}
\arguments{
\item{Data}{specifies the the multivariate functional dataset.
It is either an object of class \code{mfData} or a list of 2-dimensional
matrices having as rows the elements of that component and as columns the
measurements of the functional data over the grid.}

\item{weights}{either a set of weights (of the same length of \code{Data}
) or the string \code{"uniform"} specifying that a set of uniform weights
(of value \eqn{1 / L}, where \eqn{L} is the number of dimensions of the
functional dataset and thus the length of \code{Data}) is to be used.}
}
\value{
The function returns a vector containing the values of MEI of each element
of the multivariate functional dataset.
}
\description{
These functions compute the Modified Epigraph Index of
elements of a multivariate functional dataset.
}
\details{
Given a multivariate functional dataset composed of \eqn{N} elements with
\eqn{L} components each, \eqn{\mathbf{X_1} =( X^1_1(t),} \eqn{X^2_1(t),
\ldots, X^L_1(t))}, and a set of \eqn{L} non-negative weights,

\deqn{ w_1, w_2, \ldots, w_L, \qquad \sum_{i=1}^L w_i = 1,}

these functions compute the MEI of each element of the functional
dataset, namely:

\deqn{ MEI( \mathbf{X_j} ) = \sum_{i=1}^{L} w_i MEI( X^i_j ), \quad \forall
j = 1, \ldots N.}
}
\examples{
N = 20
P = 1e3

grid = seq( 0, 10, length.out = P )

# Generating an exponential covariance function to be used to simulate gaussian
# functional data
Cov = exp_cov_function( grid, alpha = 0.2, beta = 0.8 )

# First component of the multivariate guassian functional dataset
Data_1 = generate_gauss_fdata( N, centerline = rep( 0, P ), Cov = Cov )

# First component of the multivariate guassian functional dataset
Data_2 = generate_gauss_fdata( N, centerline = rep( 0, P ), Cov = Cov )

mfD = mfData( grid, list( Data_1, Data_2 ) )

# Uniform weights
multiMEI( mfD, weights = 'uniform' )

# Non-uniform, custom weights
multiMEI( mfD, weights = c(2/3, 1/3) )

}
\seealso{
\code{\link{mfData}}, \code{\link{MEI}}, \code{\link{MHI}}, \code{\link{multiMHI}}
}
