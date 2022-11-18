abalone_try %>%
library(tidyverse)
abalone <-read_csv("data/Summer Experiment - Consumption-updated 11_12.csv")
abalone
abalone %>% 
  pivot_longer(!Trough, names_to = "consumption", values_to = "grams")
ablaone <- na.omit(abalone)
abalone
sapply(abalone, class)
transform(abalone, week_12=as.numeric(week_12))
sapply(abalone, class)
abalone_consumption <- read_csv("data/updated_data.csv")
abalone_consumption
abalone_consumption %>% 
  pivot_longer(!Trough, names_to = "consumption", values_to = "grams")
abalone_long <- abalone_consumption %>% 
  pivot_longer(!Trough, names_to = "consumption", values_to = "grams")
abalone_long
abalone_long %>% 
  ggplot(aes(consumption, grams, group= 1, color= Trough))+ geom_line() + facet_wrap(~Trough)
abalone_long[A1:C7]
abalone_long
abalone_long[1:36,]
medium_abalone <-  abalone_long[1:108,]
medium_abalone %>% 
  ggplot(aes(consumption, grams, group=Trough, color=Trough))+ geom_line()
abalone_long[abalone_long$Trough == `A1`:`C7`]
abalone_long[abalone_long$Trough %in% c(`A1`,`A2`,`A3`,`A4`),]
filter(abalone_long, Trough %in% c("A1", "A2", "A3")) %>% 
  print(n=36)
abalone_long[c(1:80),] %>% print(n=80)
abalone_long[c(1:252),] %>% tail()
medium_abalone <-abalone_long[c(1:252),]
tail(medium_abalone) 
medium_abalone
medium_abalone %>% 
  ggplot(aes(consumption, grams, group=Trough, color=Trough))+geom_line()+facet_wrap(~Trough)

treatments <- read_csv("data/consumption$treatment.csv")
treatments
treatments %>% 
  pivot_longer(!Trough, names_to = "week", values_to = "grams")
class(treatments)
sapply(treatments, class)
treatments %>% 
  as.character("Treatment")
treatments$Treatment <- as.character("Treatment")
treatments
rm(treatments)
treatment_ab <- read.csv("data/consumption$treatment.csv")
treatment_ab
treatment_ab %>% 
  group_by(Treatment) %>% 
  filter(Treatment== "1")
treatment_1 <- treatment_ab %>% 
  group_by(Treatment) %>% 
  filter(Treatment== "1")
treatment_2 <- treatment_ab %>% 
  group_by(Treatment) %>% 
  filter(Treatment== "2")
treatment_3 <- treatment_ab %>% 
  group_by(Treatment) %>% 
  filter(Treatment== "3")
treatment_1

abalone_try <- treatment_ab %>% 
  pivot_longer(cols = starts_with("week_"), names_to = "weeks", names_prefix = "week_", values_to = "grams")
abalone_try
abalone_try %>% 
  ggplot(aes(weeks, grams, group=Treatment, color=Trough))+geom_line()
abalone_try %>% 
  filter(Treatment=="1") %>% 
  ggplot(aes(weeks, grams, group=Trough, color=Trough))+geom_line()

abalone_try %>% 
  print(n=100)






