#' Substitution of T with U
#'
#' @param dna string
#'
#' @return rna data
#' @export
#'
TU_sub <- function(dna){
  rna <- gsub("T", "U", dna)
  return(rna)
}