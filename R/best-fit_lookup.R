## Best-fit lookup between LSOAS and electoral wards ##

# Source: ONS
# URL: http://geoportal.statistics.gov.uk/datasets/lower-layer-super-output-area-2011-to-ward-2017-lookup-in-england-and-wales
# Licence: Open Government Licence

# load libraries ---------------------------
library(tidyverse) ; library(jsonlite)

# load and tidy data ---------------------------
df <- read_csv("https://opendata.arcgis.com/datasets/500d4283cbe54e3fa7f358399ba3783e_0.csv") %>% 
  setNames(tolower(names(.))) %>% 
  select(wd17cd, lsoa11cd) %>% 
  arrange(wd17cd)

# convert to json ---------------------------
df %>% 
  group_by(wd17cd) %>% 
  summarise(lsoa11cd = list(lsoa11cd)) %>% 
  toJSON(pretty = TRUE) %>% 
  listviewer::jsonedit()
