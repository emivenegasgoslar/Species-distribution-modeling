data <- read.csv("data/cleanedData.csv")

library(leaflet)
library(mapview)

map <- leaflet() %>%
  addProviderTiles("Esri.WorldTopoMap") %>%
  addCircleMarkers(data = data,
                   lat = ~decimalLatitude,
                   lng = ~decimalLongitude,
                   radius = 3,
                   color = "brown",
                   fillOpacity = 0.8) %>%
  addLegend(position = "topright",
            title = "Species Occurences from GBIF",
            labels = "Habronattus americanus",
            colors = "brown",
            opacity = 0)




# Save the map
mapshot2(map, file = "output/leafletTest.png")


