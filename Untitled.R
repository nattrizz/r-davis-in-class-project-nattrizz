library(tidyverse)
brady <- data.frame("v_present" = c(211,60,227,44), "v_absent" = c(58,71,90,39), row.names = c("farmed", "wild", "import", "domestic"))
brady
library(stats)
fisher.test(brady)
pairwise_fisher_test(as.matrix(brady), p.adjust.method = "dfr")
install.packages("rstatix")
library(rstatix)
pairwise_fisher_test(as.matrix(brady))
mosaicplot(brady,
           main = "Mosaic Plot",
           color = blues9)
brady
brady %>% 
  mutate()