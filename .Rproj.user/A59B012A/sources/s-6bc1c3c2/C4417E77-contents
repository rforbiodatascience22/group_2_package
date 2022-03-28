#' Plot number of amino acids in peptide
#'
#' @param peptide
#'
#' @return Graph of amino acid counts
#' @export
#'
#' @importFrom magrittr %>%
#inputs peptide string, and turns them into unique character strings
aa_plot <- function(peptide){
  aa_output <- peptide %>%
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) %>%
    as.character() %>%
    unique()

#Takes unique amino acid string, and applies the count function (works similar to map in tidyverse)
  counts <- sapply(aa_output, function(aa_count) stringr::str_count(string = peptide, pattern =  aa_count)) %>%
    as.data.frame()

#Generates dataframe containing counts
  colnames(counts) <- c("Counts")
  counts[["Peptide"]] <- rownames(counts)

#Plots the counts in ggplot, and returns the the plot
  aa_graph <- counts %>%
    ggplot2::ggplot(ggplot2::aes(x = Peptide, y = Counts, fill = Peptide)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw()

  return(aa_graph)
}
