## Lookup between Local Authority Districts and Electoral Wards ##

# Source: ONS
# URL: http://geoportal.statistics.gov.uk/datasets/ward-to-local-authority-district-december-2017-lookup-in-the-united-kingdom
# Licence: Open Government Licence

# load libraries ---------------------------
library(tidyverse) ; library(jsonlite)

# load and tidy data ---------------------------
df <- read_csv("https://opendata.arcgis.com/datasets/046394602a6b415e9fe4039083ef300e_0.csv") %>% 
  setNames(tolower(names(.))) %>% 
  select(lad17cd, lad17nm, wd17cd, wd17nm) %>% 
  arrange(lad17cd)

# convert to json ---------------------------
df %>% 
  group_by(lad17cd, lad17nm) %>% 
  summarise(wd17cd = list(wd17cd),
            wd17nm = list(wd17nm)) %>% 
  toJSON(pretty = TRUE) %>% 
  listviewer::jsonedit()
