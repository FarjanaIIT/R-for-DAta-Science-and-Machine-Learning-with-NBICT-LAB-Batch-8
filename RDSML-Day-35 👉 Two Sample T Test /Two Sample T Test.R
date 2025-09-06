# What is a two-sample t-test?
#Assumptions of a two-sample t-test
#How to perform a two-sample t-test in R
# Result interpretation

dataset <- read.csv("scores.csv")

shapiro.test(dataset$Male)
shapiro.test(dataset$Female)

# checking the va
var.test(x = dataset$Male, y = dataset$Female)

# Running the indipendent sample 

t.test(x = dataset$Male, y = dataset$Female, var.equal = TRUE)

library(ggplot2)
library(dplyr)



means <- c(mean(dataset$Male), mean(dataset$Female))

names(means) <- c("Male", "Female")

barplot(means,
        col = c("skyblue", "pink"),
        main = "Group Means",
        ylab = "Mean Value")


  
