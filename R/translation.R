#' Translation
#'
#' @param codons
#'
#' @return
#' @export
#'
#' @examples
transcrition <- function(codons){
  protein <- paste0(codon_table[codons], collapse = "")
  return(protein)
}
