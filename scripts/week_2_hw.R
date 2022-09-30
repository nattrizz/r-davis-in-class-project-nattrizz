set.seed(15)
hw2 <- runif(50, 4, 50)
hw2 <-  replace(hw2, c(4, 12, 22, 27), NA)
hw2
?set.seed
hw2 %>% rm("NA")
prob1 <- na.omit(hw2)
prob1
prob1[c(14:38)]
prob1[prob1<=38]
prob1[prob1>=14 | prob1<=38]
hw2
above_ <- prob1[prob1>=14]
above_[above_<=38]
final_prob1 <- above_[above_<=38]
final_prob1
times3 <- lapply(final_prob1, "*",3)
times3
lapply(times3, "+", 10)
plus10 <- lapply(times3, "+", 10)
plus10
plus10[c(TRUE, FALSE)]



#I did not end up with the correct numbers, here is my second attempt using the code provided

hw2
actual_hw2 <-  hw2[!is.na(hw2)]
actual_hw2
actual_prob1 <-  actual_hw2[actual_hw2 > 14 & actual_hw2 < 38]
actual_prob1
actual_times3 <- lapply(actual_prob1,"*", 3)
actual_times3
actual_plus10 <- lapply(actual_times3, "+", 10)
actual_plus10
actual_final <- actual_plus10[c(TRUE, FALSE)]
actual_final
