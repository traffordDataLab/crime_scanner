## Lookup between Regions and Local Authority Districts ##

# Source: ONS
# URL: http://geoportal.statistics.gov.uk/datasets/local-authority-district-to-region-december-2017-lookup-in-england-
# Licence: Open Government Licence

# load libraries ---------------------------
library(tidyverse) ; library(jsonlite)

# load and tidy data ---------------------------
df <- read_csv("https://opendata.arcgis.com/datasets/c457af6314f24b20bb5de8fe41e05898_0.csv") %>% 
  setNames(tolower(names(.))) %>% 
  select(rgn17cd, rgn17nm, lad17cd, lad17nm) %>% 
  arrange(rgn17cd)

# convert to json ---------------------------
df %>% 
  group_by(rgn17cd, rgn17nm) %>% 
  summarise(lad17cd = list(lad17cd),
            lad17nm = list(lad17nm)) %>% 
  toJSON(pretty = TRUE) %>% 
  listviewer::jsonedit()
