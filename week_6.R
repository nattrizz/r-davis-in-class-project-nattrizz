library(tidyverse)
gapminder <- read_csv("https://gge-ucd.github.io/R-DAVIS/data/gapminder.csv")
glimpse(gapminder)
gapminder %>%
  group_by(continent, year) %>% 
  summarise(mean_life = mean(lifeExp)) %>% 
  ggplot(aes(x= year, y= mean_life))+geom_line(aes(color= continent))

ggplot(gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point(aes(color = continent), size = .25) + ggtitle("Life Expectancy per GDP by Continent") +
  scale_x_log10() +
  geom_smooth(method = 'lm', color = 'black', linetype = 'dashed') +
  theme_minimal()


ggplot(gapminder, aes(x = gdpPercap, y = lifeExp)) +
  geom_point(aes(color = continent, size = pop)) + 
  scale_x_log10() +
  geom_smooth(method = 'lm', color = 'black', linetype = 'dashed') +
  theme_bw()
