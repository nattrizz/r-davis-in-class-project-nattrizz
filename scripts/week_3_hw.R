getwd
library(tidyverse)
read.csv("data/portal_data_joined.csv")
surveys_base <- read.csv("data/portal_data_joined.csv")
surveys_base
head(surveys_base)
surveys_base %>% filter(species_id, weight, plot_type)
head(surveys_base)
str(surveys_base)
surveys_base <- surveys_base %>% select(species_id, weight, plot_type)
surveys_base
dim(surveys_base)
survey_list <-surveys_base %>% select(species_id,weight,plot_type)
survey_list
survey_list[1:5000]
