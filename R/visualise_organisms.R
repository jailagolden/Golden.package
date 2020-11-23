
visualize_taxa <- function(just_data) {
  mega_taxafilt <- select(just_data, scientificName, decimalLatitude, decimalLongitude)
  mega_taxavis <-mega_taxafilt %>%
    group_by(decimalLatitude) %>% 
    mutate(n_areas = n()) %>% 
    leaflet() %>% 
    addTiles() %>% 
    addCircleMarkers(~decimalLongitude, ~decimalLatitude, color = c("red"))
  mega_taxavis
}

visualize_taxa(just_data)
