## Mid-2017 population estimates ##

# Source: ONS
# URL: https://www.ons.gov.uk/peoplepopulationandcommunity/populationandmigration/populationestimates
# Licence: Open Government Licence

# load libraries ---------------------------
library(tidyverse) ; library(readxl) ; library(jsonlite)

# 1. Local Authority district: 2017
lad <- read_csv("http://www.nomisweb.co.uk/api/v01/dataset/NM_2002_1.data.csv?geography=TYPE446&date=latest&gender=0&c_age=200&measures=20100&select=geography_code,obs_value") %>% 
  select(area_code = GEOGRAPHY_CODE,
         population = OBS_VALUE)

# 2. Electoral wards: 2017
url <- "https://www.ons.gov.uk/file?uri=/peoplepopulationandcommunity/populationandmigration/populationestimates/datasets/wardlevelmidyearpopulationestimatesexperimental/mid2017sape20dt8/sape20dt8mid2017ward2017syoaestimatesunformatted1.zip"
download.file(url, dest = "data/sape20dt8mid2017ward2017syoaestimatesunformatted1.zip")
unzip("data/sape20dt8mid2017ward2017syoaestimatesunformatted1.zip", exdir = "data")
file.remove("data/sape20dt8mid2017ward2017syoaestimatesunformatted1.zip")

ward <- read_excel("data/SAPE20DT8-mid-2017-ward-2017-syoa-estimates-unformatted.xls", sheet = 4, range = "A5:D8302") %>% 
  select(area_code = `Ward Code 1`, population = `All Ages`)

# 3. Lower-layer Super Output Areas: 2017
url <- "https://www.ons.gov.uk/file?uri=/peoplepopulationandcommunity/populationandmigration/populationestimates/datasets/lowersuperoutputareamidyearpopulationestimates/mid2017/sape20dt2mid2017lsoasyoaestimatesunformatted.zip"
download.file(url, dest = "data/sape20dt2mid2017lsoasyoaestimatesunformatted.zip")
unzip("data/sape20dt2mid2017lsoasyoaestimatesunformatted.zip", exdir = "data")
file.remove("data/sape20dt2mid2017lsoasyoaestimatesunformatted.zip")

lsoa <- read_excel("data/SAPE20DT2-mid-2017-lsoa-syoa-estimates-unformatted.xls", sheet = 4, skip = 3) %>% 
  select(area_code = `Area Codes`, population = `All Ages`)

# merge data ---------------------------
df <- bind_rows(lad, ward, lsoa) %>% 
  arrange(area_code)

# convert to json ---------------------------
toJSON(as.data.frame(df)) %>% 
  listviewer::jsonedit()


