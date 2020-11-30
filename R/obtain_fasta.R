#' Obtain .fasta files from NCBI database
#' 
#' 
#' You have to perform a search in the NCBI database before you execute the function. The search results are stored in a  list. 

#' search <-  entrez_search(db = "Nucleotide", term="genus", retmax = 100, api_key ="669d671ec088301f59dc01dd767127db2508")

#' Obtain fasta files 
#' 
#' @param genus is the name of the genus you are obtaining fasta files for 
#' @param genus_ids is the ids that were obtained using entrez_search 
#' 
#' @return the  fasta sequence from the database 
#' 
#' @export
#' 
fasta  <- function(genus){
  genus_ids <- search$ids
  for( seq_start in seq(1,50,100)){
    recs <- entrez_fetch(db="nuccore", id = genus_ids,
                         rettype="fasta", retmax=50, retstart=seq_start)
    cat(recs, file="genus.fasta", append=TRUE)
    cat(seq_start+49, "sequences_downloaded\r")
  }
  return(recs)
}
