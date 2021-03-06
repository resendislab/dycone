% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kcone.R
\name{kcone}
\alias{kcone}
\title{Get the k-cone from a given flux cone.}
\usage{
kcone(V, mats, normalize = FALSE)
}
\arguments{
\item{V}{The flux cone basis. Rows denote the dimensions and columns the
individual basis vectors.}

\item{mats}{The metabolic terms. A vector with as many entries as rows in V.
All entries hsould be larger than 0.}

\item{normalize}{Whether the basis vectors should be scaled to unit length.
Not recommened for differential analysis.}
}
\value{
The obtained k-cone as a matrix.
}
\description{
\code{kcone()} builds the k-cone from a given flux cone basis V and a set
of metabolic terms M by calculating \eqn{M^{-1}V}.
}
\examples{
data(eryth)
S <- matrix(c(1,0,0,1,-1,0, 0, -1), nrow=2)
rownames(S) <- c('A', 'B')
V <- polytope_basis(S)
K <- kcone(V, runif(ncol(S)))
}
\seealso{
\code{\link{polytope_basis}} for a way to calculate the flux cone,
 \code{\link{ma_terms}} to get mass action term.
}
\keyword{basis}
\keyword{k-cone}
