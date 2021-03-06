% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fData.R
\name{toListOfValues}
\alias{toListOfValues}
\title{Manipulation of \code{mfData} list of values}
\usage{
toListOfValues(mfData)
}
\arguments{
\item{mfData}{the multivariate functional dataset in form of \code{mfData}
object.}
}
\value{
The function returns the list of values of each \code{fData} object
representing the components of \code{mfData}.
}
\description{
This utility function manipulates a \code{mfData} object in order to extract
from the list of its \code{fData} objects ( namely, \code{mfData$fDList} )
the measurement values of each component and stores them into a list.
}
\details{
Given a \code{mfData} of \code{L} components, the function is equivalent to
\code{ list( mfData$fDList[[ 1 ]]$values,} \code{..., }
\code{ mfData$fDList[[ L ]]$values ) }.
}
\examples{

grid = seq( 0, 1, length.out = 5 )

D_1 = matrix( 1 : 5, nrow = 10, ncol = 5, byrow = TRUE )
D_2 = 2 * D_1
D_3 = 3 * D_1

mfD = mfData( grid, list( D_1, D_2, D_3 ) )
mfD

toListOfValues( mfD )

}
\seealso{
\code{\link{mfData}}
}
