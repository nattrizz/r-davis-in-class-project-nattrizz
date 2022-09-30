install.packages("tidyverse")
no
set.seed(15)
hw2 <- runif(50, 4, 50)
hw2 <-  replace(hw2, c(4, 12, 22, 27), NA)
hw2
na.omit(hw2)
hw_clean <-  na.omit(hw2)
hw_clean
hw_clean[hw_clean>=14]
hw_above <- hw_clean[hw_clean>=14]
hw_above
hw_above[hw_above<=38]
hw_clean
hw_clean[hw_clean<38 & hw_clean<14]
