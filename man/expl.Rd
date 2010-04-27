\name{expl}
\Rdversion{1.1}
\alias{expl}
\docType{data}
\title{
Small example extracted from a microarray dataset
}
\description{
The microarray dataset is the study on the prostate cancer by Singh et al. 
The collection of the microarray is hgu95av2, and the gene groups were thus 
given by the information in the hgu95av2.db Bioconductor library (see Carslon et al.). 
}
\usage{data(expl)}
\details{
The dataset is a list containing:
\itemize{
\item a \eqn{102 \times 100}{102 x 100} matrix \eqn{x}{x} of 100 genes randomly 
chosen from the dataset of Singh et al.,
\item a list \samp{genegroups} containing 100 vectors of KEGG pathway IDs 
(to which each gene belongs to). }
}
\source{
\itemize{
\item Marc Carlson, Seth Falcon, Herve Pages and Nianhua Li (). hgu95av2.db: Affymetrix Human Genome U95 Set annotation data (chip hgu95av2).
  R package version 2.2.12.
\item Singh, D.; Febbo, P. G.; Ross, K.; Jackson, D. G.; Manola, J.; Ladd, C.; Tamayo, P.; 
Renshaw, A. A.; D'Amico, A. V.; Richie, J. P.; Lander, E. S.; Loda, M.; Kantoff, P. W.; 
Golub, T. R. & Sellers, W. R. Gene expression correlates of clinical prostate cancer behavior. 
Cancer Cell, Department of Adult Oncology, Brigham and Women's Hospital, Harvard Medical School, 
Boston, MA 02115, USA., 2002, 1, 203-209 }
}
\examples{
data(expl)
dim(expl$x)
length(expl$genegroups)
}
\keyword{datasets}
