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

# 0.2 ~ small, 0.5 ~ medium, 0.8 ~ large

install.packages("effsize")
library(effsize)

cohen.d(mydataset$carb_protein, mydataset$carb, paired = T)

# A paired-samples t-test was used to determine whether there was a 
# statistically significant mean difference between the distance ran 
# when participants imbibed a carbohydrate-protein drink compared to 
# a carbohydrate-only drink. No outliers were ditected. The assumption
# of normality was not violated, as assesed by Shipro-Wilk's test 
# (p = 0.780). Participants ran further when imbibing the carbohydrate-
# protein drink (Mean = 11.302 KM, SD = 0.713 KM) as opposed to the
# carbohydrate only drink (Mean =  11.167 KM, SD = 0.726 KM), a 
# statistically significant mean increase of 0.135 KM, 
# 95% CI [0.091, 0.181], t(19) = 6.352, p < = .001, Cohen's d estimate: 0.187.
