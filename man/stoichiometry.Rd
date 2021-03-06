% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/model_utility.R
\name{stoichiometry}
\alias{stoichiometry}
\title{Calculates the stochiometric matrix for a list of reactions.}
\usage{
stoichiometry(reacts, reversible = FALSE, const = NULL,
  sparse = FALSE)
}
\arguments{
\item{reacts}{The reaction list to be used.}

\item{reversible}{Whether the stochiometric matrix can include reversible
reactions.}

\item{const}{A vector of species names that are assumed to be invariant and
will be dropped from the stochiometric matrix. The default is not to drop
any species.}

\item{sparse}{Whether the stoichiometric matrix should saved in a sparse
format. Reguires the \code{Matrix} package to be installed.}
}
\value{
The stochiometric matrix with dimension n_s x n_r.
}
\description{
Calculates the stochiometric matrix for a list of reactions.
}
\examples{
data(eryth)
S <- stoichiometry(eryth)
}
\seealso{
\code{\link{read_reactions}} to read a reaction list from a file.
}
\keyword{stoichiometry}
