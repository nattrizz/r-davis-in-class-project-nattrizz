surveys <- read.csv("data/portal_data_joined.csv")
surveys
library("tidyverse")
surveys_w <-  surveys %>% 
  filter(weight >= 30 & weight <= 60)
surveys_w
glimpse(surveys_w)
surveys_w %>% 
  group_by(species) %>% 
  filter(species, sex, weight)
surveys %>% 
  filter(!is.na(weight)) %>% 
  group_by(species_id, sex) %>% 
  summarise(max_weight = max(weight))
biggest_critters <- surveys %>% 
  filter(!is.na(weight)) %>% 
  group_by(species_id, sex) %>% 
  summarise(max_weight = max(weight))
sapply(surveys, function(x) sum(is.na(x)))
surveys %>% filter(!is.na(weight)) %>% 
  group_by(species_id, sex) %>% 
  mutate(avg_weight = mean(weight))
surveys_avg_weight <- surveys %>% filter(!is.na(weight)) %>% 
  group_by(species_id, sex) %>% 
  mutate(avg_weight = mean(weight))
surveys_avg_weight <-  surveys_avg_weight %>% 
  select(species_id, sex, weight, avg_weight)
surveys_avg_weight
glimpse(surveys_avg_weight)
count(surveys_avg_weight)
surveys_avg_weight <- surveys_avg_weight %>% 
  mutate(above_avg = weight > avg_weight)
surveys_avg_weight  







