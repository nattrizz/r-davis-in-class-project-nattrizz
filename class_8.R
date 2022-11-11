library(lubridate)
dates <- c('2012-10-20','1932-11-10','1995-12-11','1993-10-1')
as.Date(dates)



#how to write a function 
## 1. name it
## 2. asisgn it to do something useing placeholders
## 3. deploay with the funcion function

#covert 75F to K

K <- ((75-32)*(5/9)) +273.15

FtoK <-  function(x){
  ((x-32)*(5/9)) + 273.15
}
FtoK(x = 75
     )

install.packages("gapminder")
library(gapminder)
library(tidyverse)
d <- gapminder::gapminder

gapminder %>% 
  select(country, year, pop) %>% 
  filter(country == "Costa Rica") %>% 
  ggplot(aes(x= year, y = pop, fill = country))+geom_point()


CR <- function(c){gapminder %>% 
    select(country, year, pop) %>% 
    filter(country == "Costa Rica") %>% 
    ggplot(aes(x= year, y = pop, fill = country))+geom_point()}
CR

graph_country <- function(q){
  thing <- d %>% 
    filter(country == q) %>% 
    ggplot(aes(year, pop))+geom_point()+geom_line()+theme_classic()
}
graph_country("Zimbabwe")



