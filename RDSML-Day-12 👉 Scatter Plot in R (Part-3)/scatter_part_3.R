# RDSML-Day-12 👉 Scatter Plot in R (Part-3)
# Making the environment ready (Instructor's Repository)
# Converting cyl column from a numeric to a factor variable
# Adding regression lines based on multiple groups
# Removing the confidence intervals
# Extending the regression lines
# Filling the color of confidence bands 
# Changing point shapes manually
# Changing point colors manually
# Customizing scatter plots
# Customizing themes

library(ggplot2)
dataset = mtcars

# Converting cyl column from a numeric to a factor variable
dataset$cyl

dataset$cyl = as.factor(dataset$cyl)

# Adding regression lines based on multiple groups
ggplot(dataset, aes(x = wt, y = mpg,  color = cyl, shape = cyl)) + geom_point() + geom_smooth(method = lm)


# Removing the confidence intervals

ggplot(dataset, aes(x = wt, y = mpg,  color = cyl, shape = cyl)) +
geom_point() + geom_smooth(method = lm, se = FALSE)

# Extending the regression lines

ggplot(dataset, aes(x = wt, y = mpg,  color = cyl, shape = cyl)) +
  geom_point() + geom_smooth(method = lm, se = FALSE, fullrange = TRUE)


# Filling the color of confidence bands 

ggplot(dataset, aes(x = wt, y = mpg,  color = cyl, shape = cyl)) +
  geom_point() + geom_smooth(method = lm, aes(fill = cyl)) # it will give confidence interval according to multiple groups 

# Changing point shapes manually

ggplot(dataset, aes(x = wt, y = mpg,  color = cyl, shape = cyl)) +
  geom_point() + geom_smooth(method = lm, se = FALSE, fullrange = TRUE) +
  scale_shape_manual(values = c(3, 16, 17)) + 
theme(legend.position = "top")

# Changing point colors manually

ggplot(dataset, aes(x = wt, y = mpg,  color = cyl, shape = cyl)) +
  geom_point() + geom_smooth(method = lm, se = FALSE, fullrange = TRUE) +
  scale_shape_manual(values = c(3, 16, 17)) + 
  scale_color_manual(values = c("yellow", "red", "blue")) +
  theme(legend.position = "top")

# Customizing scatter plots

ggplot(dataset, aes(x = wt, y = mpg,  color = cyl, shape = cyl)) +
  geom_point() + geom_smooth(method = lm, se = FALSE, fullrange = TRUE) +
  scale_shape_manual(values = c(3, 16, 17)) + 
  scale_color_manual(values = c("yellow", "red", "blue")) +
  labs(title = "Miles per gallon \naccording to the weight",
       x = "Weight", y = "milles/gallon") +
  theme(legend.position = "top")


# Customizing themes

plot = ggplot(dataset, aes(x = wt, y = mpg,  color = cyl, shape = cyl)) +
  geom_point() + geom_smooth(method = lm, se = FALSE, fullrange = TRUE) +
  scale_shape_manual(values = c(3, 16, 17)) + 
  scale_color_manual(values = c("yellow", "red", "blue")) +
  labs(title = "Miles per gallon \naccording to the weight",
       x = "Weight", y = "milles/gallon") +
  theme(legend.position = "top")

plot + theme_classic()
plot + theme_minimal()
plot + theme_dark()

plot + theme_linedraw()


