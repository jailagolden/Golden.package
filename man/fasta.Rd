% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/obtain_fasta.R
\name{fasta}
\alias{fasta}
\title{Obtain .fasta files from NCBI database}
\usage{
fasta(genus)
}
\arguments{
\item{genus}{is the name of the genus you are obtaining fasta files for}

\item{genus_ids}{is the ids that were obtained using entrez_search}
}
\value{
the  fasta sequence from the database
}
\description{
You have to perform a search in the NCBI database before you execute the function. The search results are stored in a  list.
search <-  entrez_search(db = "Nucleotide", term="genus", retmax = 100, api_key ="669d671ec088301f59dc01dd767127db2508")
Obtain fasta files
}
