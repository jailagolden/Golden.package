mega_penfilt <- select(mega_pen, scientificName, decimalLatitude, decimalLongitude)

megafilt_pen %>%
  group_by(decimalLatitude) %>% 
  mutate(n_areas = n()) %>% 
  leaflet() %>% 
  addTiles() %>% 
  addCircleMarkers(~decimalLongitude, ~decimalLatitude, radius = ~n_areas, color = c("green"))

visualiza_taxa <- function(penguin_df) {
  mega_taxafilt <- select(penguin_df, scientificName, decimalLatitude, decimalLongitude)
  mega_taxavis <-mega_taxafilt %>%
    group_by(decimalLatitude) %>% 
    mutate(n_areas = n()) %>% 
    leaflet() %>% 
    addTiles() %>% 
    addCircleMarkers(~decimalLongitude, ~decimalLatitude, radius = ~n_areas, color = c("green"))
  mega_taxavis
}

visualize_taxa(penguin_df)