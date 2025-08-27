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
