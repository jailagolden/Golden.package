#' query the desired organisms
#' 
#' 

Organism <- function(){
  name_suggest("Quelea quelea")
  occurrences <- occ_search(taxonKey = 2493987)
  just_data <- occurrences$data %>%
    select(scientificName, decimalLatitude, decimalLongitude) %>%
    drop_na()
}

Organism()
