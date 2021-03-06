% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kcone.R
\name{eigendynamics}
\alias{eigendynamics}
\title{Gets the eigendynamics for a given k.cone basis.}
\usage{
eigendynamics(basis, n = 1)
}
\arguments{
\item{basis}{The k-cone to be reduced.}

\item{n}{The number of eigendynamics to extract. Defaults to only the first.}
}
\value{
A matrix containing the first k eigendynamics in its columns.
}
\description{
The eigendynamics for a given k-cone is the set of k vectors reproducing
the original k-cone with the most accuracy, using only k basis-vectors.
Here, only the first eigendynamics is guaranteed to be consistent with
the k-cone (all entries positive), all the additional eigendynamics can
be intepreted as fine tuning of the first eigendynamics.
}
\examples{
S <- matrix(c(1,0,0,1,-1,0, 0, -1), nrow=2)
rownames(S) <- c('A', 'B')
V <- polytope_basis(S)
ed <- eigendynamics(V) # gets the eigenpathways
}
\keyword{basis}
