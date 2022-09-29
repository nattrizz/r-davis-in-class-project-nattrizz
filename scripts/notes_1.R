1+1
log(2)
log(x)
a <- 1
b <- 2
c <- a + b
b <- 4
a <- b
c <- a
c 
x<- c(3,5,7,20)
log(x)
?c
# naming conventions
my_name <- "Natalie"
log(x=3, base = exp(1))
log(3)
log(3, base= 10)
# quickly make the arrow Option+ -
dataset <- "3432"
# remove object
rm(x)
rm("dataset", "my_name")
#remove whole list or use the broom?
rm (list= ls())

getwd
getwd()
list.files()
?list.files
list.files("data")
list.files(path="data")
list.files("notes_1.R")
getwd()
list.files(path = "/Users/natalierizzo/Desktop/R_DAVIS_2022/r-davis-in-class-project-nattrizz/.Rhistory
           ")
list.files("data")

#add scripts folder

dir.create("scripts")
# save file in the specific folder



weight <- vector()
str(weight)
weight <- c(5, 10 ,200, 24)
length(weight
       )
str(weight)

#combine more numbers to object
weight <- c(weight, 39)
weight

# using [] allows you to grab somethings from an object

weight[3]

#multiple need to use c

weight[c(1,3)]
