#### Preamble ####
# Purpose: Download data from opeendatatoronto 
# Author: SangWoong Lee
# Data: 2 Feburary 2022
# Contact: sangwoong.lee@mail.utoronto.ca


#### Workspace setup ####
library(tidyverse)
library(opendatatoronto)



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



         