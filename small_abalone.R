library(tidyverse)
smalls <- read.csv("data_small.csv")
glimpse(smalls)
smalls <- na.omit(smalls)
glimpse(smalls)
clip_small <-  smalls %>% 
  select(Treatment, length_change, weight_change)
clip_small
clip_small %>% 
  group_by(Treatment) %>% 
  summarise(mean(weight_change))
clip_small %>% 
  group_by(Treatment) %>% 
  summarise(mean(length_change))
clip_small %>% 
  ggplot(aes(Treatment, length_change, group=Treatment, fill= Treatment))+geom_boxplot()
clip_small %>% 
  ggplot(aes(Treatment, weight_change, group=Treatment, fill=Treatment))+geom_boxplot()
sm_aov <- aov(weight_change ~ Treatment, data = smalls)
summary(sm_aov)

TukeyHSD(sm_aov)

sm_len <- aov(length_change ~ Treatment, data = smalls)
summary(sm_len)

TukeyHSD(sm_len)

clip_aov <- aov(weight_change ~ Treatment, data = clip_small)
summary(clip_aov)

clip_len <- aov(length_change ~ Treatment, data = clip_small)
summary(clip_len)

TukeyHSD(clip_len)

smalls %>% 
  group_by(Treatment) %>% 
  summarise(
    count = n(),
    mean_l = mean(length_change, na.rm=T),
    sd_l = sd(length_change, na.rm=T),
    mean_w = mean(weight_change, na.rm=T),
    sd_w = sd(weight_change, na.rm = T)
  )

anova(lm(length_change ~ Treatment * weight_change, smalls))


anova(lm(Treatment ~ weight_change * length_change, smalls))

smalls
small_f
clip_small
#BW ratio = mean final weight / mean final length
ratio_small <- smalls %>% 
  select(Treatment, length_final, weight_final)
ratio_small
ratio_small <- ratio_small %>% mutate(bw_ratio = weight_final/length_final)
ratio_ano <- aov(Treatment ~ bw_ratio, data = ratio_small)
ratio_small
aov(Treatment ~bw_ratio, data = ratio_small)
is.na(ratio_small)

ratio_an <- aov(bw_ratio ~ Treatment, data = ratio_small)
TukeyHSD(ratio_an)

#clip_small %>% 
ggplot(aes(Treatment, weight_change, group=Treatment, fill=Treatment))+geom_boxplot(
  
ratio_small %>% 
  ggplot(aes(Treatment, bw_ratio, group=Treatment, fill=Treatment)) + geom_boxplot()

ratio_small %>% 
  group_by(Treatment) %>% 
  ggplot(aes(Treatment, bw_ratio, group= Treatment, fill=Treatment))+geom_boxplot()
