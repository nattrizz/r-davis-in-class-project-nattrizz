library(tidyverse)
read.csv("R_data_med_wl.csv")
med_wl <- read.csv("R_data_med_wl.csv")
med_wl
med_wl <- na.omit(med_wl)
med_wl
med_wl <-  med_wl %>% mutate(weight_change = weight_final - Weight_initial)
med_wl <- med_wl %>%  mutate(length_change = length_final - Length_initial)
med_wl
short <- med_wl %>% 
  select(Treatment, weight_change, length_change)
short %>% 
  filter(Treatment == "1") %>% 
  mutate(treatment_avg1 = mean(weight_change))
short %>% 
  group_by(Treatment) %>% 
  summarise(mean(weight_change))
short %>% 
  group_by(Treatment) %>% 
  summarise(mean(length_change), mean(weight_change))
short %>% 
  group_by(Treatment) %>% 
  summarise(mean(length_change)) %>% 
  ggplot(aes(Treatment, length_change))+geom_boxplot()


med_wl %>% 
  select(treatment, weight_change, length_change) %>%
  group_by(treatment) %>% 
  ggplot(aes(treatment, weight_change, group=treatment, fill=treatment))+geom_boxplot()
  
med_wl %>% 
  select(Treatment, weight_change, length_change) %>%
  group_by(Treatment) %>% 
  ggplot(aes(Treatment, length_change, group=Treatment, fill=Treatment))+geom_boxplot()  


summary(med_wl)

one_way <- aov(length_change ~ Treatment,data = med_wl)
summary(one_way)
aov(Treatment ~ length_change, data = med_wl)
?aov
lm(length_change ~ Treatment, data = med_wl)


med_wl %>% 
  group_by(Treatment) %>% 
  summarise(
    count = n(),
    mean_w = mean(weight_change, na.rm=T),
    sd_w = sd(weight_change, na.rm = T)
    )
  
med_wl %>% 
  group_by(Treatment) %>% 
  summarise(
    count = n(),
    mean_w = mean(weight_change, na.rm=T),
    sd_w = sd(weight_change, na.rm = T)
  )  


summary(med_wl)

glimpse(med_wl)

med_wl <- read_csv("R_data_med_wl.csv")

med_wl %>% 
  group_by(treatment) %>% 
  summarise(
    count = n(),
    mean_w = mean(weight_change, na.rm=T),
    sd_w = sd(weight_change, na.rm = T)
  )
med_wl %>% 
  group_by(treatment) %>% 
  summarise(
    count = n(),
    mean_l = mean(length_change, na.rm=T),
    sd_l = sd(length_change, na.rm = T)
  )
library("ggpubr")
ggline(med_wl, x = "treatment", y = "weight_change",
       add = c("mean_se", "jitter"),
       ylab = "Weight", xlab = "treatment")
ano_l <- aov(length_change ~ Treatment, data = med_wl)
summary(ano_l)

med_wl$Treatment <- as.factor("Treatment")
summary(med_wl)
glimpse(med_wl)

levels(med_wl$treatment)
med_wl$treatment <- ordered(med_wl$treatment,
                            levels = c("w", "m", "c"))
levels(med_wl$treatment)
med_wl %>% 
  group_by(treatment) %>% 
  summarise(
    count = n(),
    mean_l = mean(length_change, na.rm=T),
    sd_l = sd(length_change, na.rm = T)
  )
glimpse(med_wl)
new_ano_weight <- aov(weight_change ~ treatment, data = med_wl)
summary(new_ano_weight)

ano_len <- aov(length_change ~ treatment, data = med_wl)
summary(ano_len)

TukeyHSD(new_ano_weight)
TukeyHSD(ano_len)

plot(new_ano_weight,1)
