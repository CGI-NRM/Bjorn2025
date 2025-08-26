library(readxl)
# library(rgdal)
library(sf)

gps_convert <- function(data, latitude = "lat", longitude = "long") {
  # function that converts gps coordinates from SWEREF99 to WGS84
  #
  # args:
  #   data: The dataframe or matrix with coordinates
  #   latitude: Name of the column with latitude data
  #   longitude: Name of the column with longitude data
  #   
  # returns:
  #   A data frame with the same content as input 'data' object, but with 
  #   the coordinates in the wgs84 instead of SWEREF99
  SWEREF99 <- 3006
  WGS84 <- 4326
  p1 <- st_as_sf(data, 
                 coords = c(longitude, latitude), 
                 crs = SWEREF99)
  p2 <- st_transform(p1, WGS84)
  p2

}


