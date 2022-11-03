library(tidyverse)
surveys <- read.csv("data/portal_data_joined.csv")
summary_table <- surveys %>% 
  group_by(genus, plot_type)
summary_table       
surveys_wide <- surveys %>% 
  filter(!is.na(hindfoot_length)) %>% 
  group_by(genus, plot_type) %>% 
  summarise(mean_hindfoot = mean(hindfoot_length)) %>% 
  pivot_wider(names_from = plot_type, values_from = mean_hindfoot) %>% 
  arrange(Control)

surveys_cw <- surveys %>% 
  mutate(weight_cat = case_when(weight>= 20 ~ "small", weight< 20 & weight <48 ~ "medium", T ~ "large"))
surveys_cw

surveys_cw %>% 
  group_by(weight_cat) %>% 
  summarize(min_cat = min(weight, na.rm = T))
#ifelse in stead of casewhen is binary only and yo uhave to nest the funtion, requires a final na argument

ggplot(surveys_cw, aes(x= weight_cat, y = hindfoot_length)+geom_boxplot())
rlang::last_error()

surveys_cw
surveys
head(surveys
     )
ggplot(surveys_cw, aes(x = weight_cat, y = hindfoot_length, color=plot_type)) +
  geom_boxplot()


head(surveys)

surveys %>% 
  filter(species_id== "NL" | species_id=="PF") %>% 
  ggplot(aes(x= species_id, y= hindfoot_length))+geom_jitter(aes(color=plot_type))+geom_boxplot()

surveys_complete <- read.csv("data/portal_data_joined.csv") %>%
  filter(complete.cases(.))
yearly_counts <- surveys_complete %>% 
  count(year, species_id)
head(yearly_counts)

g <- ggplot(data = yearly_counts)
g + geom_point(aes(x= year, y=n))+ geom_path(aes(year, y=n, color= species_id))

g+ geom_path(mapping = aes(x= year, y= n, group= species_id))+facet_wrap(~species_id, scales = "free_y")


