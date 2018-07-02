library(dplyr)
library(ggmap)

# ggmap citation:
# D. Kahle and H. Wickham. ggmap: Spatial Visualization with ggplot2. The R Journal, 5(1), 144-161. URL
# http://journal.r-project.org/archive/2013-1/kahle-wickham.pdf

map_south <- qmap(location = "9820 Belvoir Rd, Fort Belvoir, VA", zoom = 16, maptype = "roadmap")
map_south

locs <- read.csv("locations.csv", stringsAsFactors = FALSE)

map_south +
  geom_point(data = locs, aes(x = Lon, y = Lat), shape = 15, color = "purple", size = 2)+
  geom_text(data = locs, aes(x = Lon, y = Lat, label = Location), hjust = 0, vjust = 0, color = "black")
  

