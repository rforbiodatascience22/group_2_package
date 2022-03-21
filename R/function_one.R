
#' Sample the nucleotides
#'
#' @param nucleotide_size
#'
#' @return
#' @export
#'
#' @examples
sample_with_replacement <- function(nucleotide_size){
  output1 <- sample(c("A", "T", "G", "C"), size = nucleotide_size, replace = TRUE)
  output2 <- paste0(output1, collapse = "")
  return(output2)
  }

sample_with_replacement(8)
