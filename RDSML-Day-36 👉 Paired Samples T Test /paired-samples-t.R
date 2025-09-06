# paired-samples t-test?
# Importing the dataset

mydataset <- read.csv("paired-samples-t-test.csv")

# Calculating the difference

diffs <- mydataset$carb - mydataset$carb_protein


# Checking if the differences are normally distributed
shapiro.test(diffs)

#Checking for outliers

boxplot(diffs) 

#Running the Paired t-Test

t.test(x = mydataset$carb, y = mydataset$carb_protein, paired = TRUE)

# Running the Wilcoxon signed-rank Test

wilcox.test(x = mydataset$carb, y = mydataset$carb_protein, paired = TRUE)



mean(mydataset$carb)
sd(mydataset$carb)

mean(mydataset$carb_protein)
sd(mydataset$carb_protein)

# Effect size calculation using Cohen's d (paired samples)

# 0.2 ∼small, 0.5 ∼ medi, 0.8 ∼ lag

install.packages("effsize")
library(effsize)

cohen.d(mydataset$carb_protein, mydataset$carb, paired = T)
