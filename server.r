
adm <- getData('GADM', country='CAN', level=1)

popup <- paste0("<strong>Name: </strong>", 
                adm$NAME_1)

leaflet() %>% 
  addTiles() %>% 
  addPolygons(data=adm, weight = 2, fillColor = "yellow", popup=popup)
