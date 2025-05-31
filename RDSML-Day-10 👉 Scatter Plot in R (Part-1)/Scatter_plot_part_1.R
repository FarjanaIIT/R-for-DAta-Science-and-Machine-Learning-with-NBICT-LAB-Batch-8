# RDSML-Day-10 👉 Scatter Plot in R (Part-1)
#Making the environment ready (Instructor's Repository)
#Installing and loading ggplot2, it helps to create publication plot
#Loading a dataset
#Generating a basic scatter plot
#Changing the point size
#Changing the point shape
#Adding the regression line
#Removing the confidence interval
#Changing the point color
#Changing the line type
#Changing the line color
#The loess method

library(ggplot2)

dataset = mtcars
# want to visualise between wt and mpg, generating basic sactter plot. Indepedent variable (wt) is assigned to X axis and dependent (mpg) also to Y axis

ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point()

#changing the point size and shape

ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point(size=4, shape = 7)

# How to add regression line

ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point(size=4, shape = 7) + 
  geom_


