#### Preamble ####
# Purpose: Download data from opeendatatoronto 
# Author: SangWoong Lee
# Data: 2 Feburary 2022
# Contact: sangwoong.lee@mail.utoronto.ca


#### Workspace setup ####
library(tidyverse)
library(opendatatoronto)

### data download ###
# From https://open.toronto.ca/dataset/police-annual-statistical-report-shooting-occurrences/

# Datasets are grouped into pacakages that have multiple datasets that are 
# relevant to that topic. So we first look at the package using a unique key
# that we obtain from the dataets webpage above.

# Get package

library(opendatatoronto)
library(dplyr)

# get all resources for this package
resources <- list_package_resources("f29feb49-ceb1-44bf-a2b6-5fc6a0e6147a")

# We need the unique key from that list of resources

# get_resource() will load the first one by default and there is only one resource.
shooting_count <- resources %>% get_resource()

### Save data ####
write_csv(shooting_count, "inputs/data/shooting_count.csv")


# Read in the raw data. 
raw_data <- readr::read_csv("inputs/data/raw_data.csv"
                     )
# Just keep some variables that may be of interest (change 
# this depending on your interests)
names(raw_data)

reduced_data <- 
  raw_data %>% 
  select(first_col, 
         second_col)
rm(raw_data)
         

#### What's next? ####



         