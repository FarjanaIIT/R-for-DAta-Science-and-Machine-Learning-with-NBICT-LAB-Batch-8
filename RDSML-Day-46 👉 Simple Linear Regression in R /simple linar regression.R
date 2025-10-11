dataset = read.csv("Salary_Data.csv")


#

install.packages("caTools")
library(caTools)
set.seed(123) #to avoid randomness
split = sample.split(dataset$Salary, SplitRatio = 2/3)
split
training_set <- subset(dataset, split == TRUE) #two equal means equal, one equal means assignment operator
test_set <- subset(dataset, split == FALSE)

nrow(training_set)
nrow(test_set)
