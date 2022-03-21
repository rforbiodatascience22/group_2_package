#' Title: Start codon_RNA sequence to aminoacid 
#'
#' @param rna sequence
#' @param start start codon
#'
#' @return codon
#' @export
#'
#' 
start_codon <- function(rna, start = 1){
  rna_length <- nchar(rna)
  codons <- substring(rna,
                      first = seq(from = start, to = rna_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = rna_length, by = 3))
  return(codons)
}

