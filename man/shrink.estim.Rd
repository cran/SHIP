\name{shrink.estim}
\alias{shrink.estim}
\title{
Shrinkage estimator of the covariance matrix of a given dataset given a target matrix
}
\description{
The shrinkage estimator is computed independantly of the nature of the target.
}
\usage{
shrink.estim(x, tar)
}
\arguments{
  \item{x}{ An \eqn{n \times p}{n x p} matrix. (the dataset)
}
  \item{tar}{A \eqn{p \times p}{p x p} positive definite matrix. (the target covariance matrix)}
}
\value{
A \eqn{p \times p}{p x p} shrinkage covariance matrix and the estimated \eqn{\lambda}{lambda}.
}
\references{
Schaefer, J., and K. Strimmer. 2005. A shrinkage approach to large-scale 
covariance matrix estimation and implications for functional genomics. 
Statist. Appl. Genet. Mol. Biol. 4: 32 }
\author{
Monika Jelizarow and Vincent Guillemot
}
\examples{
# Simulate dataset
x <- matrix(rnorm(20*30),20,30)
# Try different targets
shrink.estim(x,tar=build.target(x,type="D"))
}
\keyword{methods}
\keyword{multivariate}
