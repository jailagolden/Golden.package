#' @title Query the data for the organism
#' 
#' @param just_data is the dataframe with latitudes and longitudes
#' @return just_data which contains the name and geographical locations 
#' @importFrom rgbif "name_suggest"
#' @importFrom magrittr "%>%"
#' 
#' @export
#' 

library(rgbif)
library(tidyverse)

Organism <- function(){
  name_suggest("Quelea quelea")
  occurrences <- occ_search(taxonKey = 2493987)
  just_data <- occurrences$data %>%
    select(scientificName, decimalLatitude, decimalLongitude) %>%
    drop_na()
  return(just_data)
}

Organism()
