#' Visualize the organisms queried.
#' 
#' @param just_data dataframe with the latitudes and longitudes of occurences of the organism 
#' 
#'  
#' @export
#' 

visualize_taxa <- function(just_data) {
  mega_taxafilt <- select(just_data, scientificName, decimalLatitude, decimalLongitude)
  mega_taxavis <-mega_taxafilt %>%
    group_by(decimalLatitude) %>% 
    mutate(n_areas = n()) %>% 
    leaflet() %>% 
    addTiles() %>% 
    addCircleMarkers(~decimalLongitude, ~decimalLatitude, radius = ~n_areas, color = c("red"))
  mega_taxavis
}

visualize_taxa(just_data)
