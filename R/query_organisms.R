#' query the desired organisms
#' 
#' 

ants <- c("Pheidole")
ids <- c()
raw <- name_suggest(ants)

ids[ants] <- c(raw$data$key)


ant_occurrences <- lapply(ids, occ_data)

just_data <- ant_occurrences[[ants]]$data %>%
select(scientificName, decimalLatitude, decimalLongitude) %>%
drop_na()

