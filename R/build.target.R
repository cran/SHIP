#' Creates a covariance target, optionally by using prior information (e.g. from KEGG
#' pathways).
#' 
#' The function `build.target()` is a wrapper function to build the various types
#' of covariance targets: diagonal ("D"), constant correlation ("F"), 
#' knowledge based ("G", "Gpos", and "Gstar"), correlation ("cor").
#' 
#' 
#' @param x An \eqn{n \times p} matrix.
#' @param genegroups List of the groups each gene belongs to: each entry of the
#' list is dedicated to a gene (identified the same way as in \eqn{x}). Each
#' item of the list is thus a vector of pathway IDs. Default value = `NULL`.
#' @param type Character string specifying the wished target: "D" (by default) for a
#' diagonal target, "cor" for a correlation target, "G", "Gpos" and "Gstar" for
#' a G-type target (see Jelizarow et al, 2010) and "F" for a F-target.
#' @return A \eqn{p \times p} target covariance matrix of a certain
#' type.
#' @author Vincent Guillemot and Monika Jelizarow
#' @seealso \code{\link{targetCor}}, \code{\link{targetD}},
#' \code{\link{targetF}}, \code{\link{targetG}}, \code{\link{targetGpos}},
#' \code{\link{targetGstar}},.
#' @references M. Jelizarow, V. Guillemot, A. Tenenhaus, K. Strimmer, A.-L.
#' Boulesteix, 2010.  Over-optimism in bioinformatics: an illustration.
#' Bioinformatics. Accepted.
#' @keywords methods
#' @examples
#' 
#' # Simulate dataset
#' x <- matrix(rnorm(20*30), 20, 30)
#' # Try different targets
#' build.target(x, type = "D")
#' 
#' @export
build.target <- function(x, genegroups = NULL, type = "D") {
  targetFun <- switch(
    EXPR = type, 
    "cor" = targetCor,
    "D" = targetD,
    "F" = targetF,
    "G" = targetG,
    "Gpos" = targetGpos,
    "Gstar" = targetGstar)
  res <- targetFun(x,genegroups)
}
