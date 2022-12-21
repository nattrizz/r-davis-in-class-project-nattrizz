consumption <- read.csv("data/consumptionn.csv")
consumption
consumption[1:21,]  
medium <- consumption[1:21,]
small <- consumption[22:45,]
small
library(tidyverse)
small
consumption

glimpse(small)

small
small_f <- small %>%
  select(Treatment, week_1:week_13)
small_f %>% 
  group_by(Treatment) %>% 
  summarise(mean(week_1):mean(week_13))
small_f %>% pivot_longer(!Treatment,names_to = "week", values_to = "grams")

longer <- small_f %>% 
  group_by(Treatment) %>% 
  summarise(mean(week_1), mean(week_2), mean(week_3),
         mean(week_4), mean(week_5), mean(week_6), mean(week_7), mean(week_8),
         mean(week_9), mean(week_10), mean(week_11), mean(week_12), mean(week_13)) %>% 
  pivot_longer(!Treatment, names_to = "avg_week", values_to = "grams")
  longer
longer

small_f %>% 
  group_by(Treatment) %>% 
  pivot_longer(!Treatment, names_to = "week", values_to = "grams")



consumption %>% pivot_longer(cols = starts_with("week_"), names_to = "weeks", names_prefix = "week_", values_to = "grams")
small %>% pivot_longer(cols = starts_with("week_"), names_to = "weeks", names_prefix = "week_", values_to = "grams")
long_small <- small %>% pivot_longer(cols = starts_with("week_"), names_to = "weeks", names_prefix = "week_", values_to = "grams")
long_small
long_small %>% 
  group_by(Treatment) %>% 
  summarise(n())


