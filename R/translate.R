#' Translation
#'
#' @param codons translation codon
#'
#' @return protein
#' @export
#'
translation <- function(codons){
  protein <- paste0(codon_table[codons], collapse = "")
  return(protein)
}
