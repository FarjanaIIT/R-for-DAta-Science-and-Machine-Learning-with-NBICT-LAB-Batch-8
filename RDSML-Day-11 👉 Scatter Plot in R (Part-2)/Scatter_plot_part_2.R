# RDSML-Day-11 👉 Scatter Plot in R (Part-2)
# Making the environment ready (Instructor's Repository)
# Adding the regression line
# Removing the confidence interval
# Changing the point color
# Changing the line type
# Changing the line color
# The loess method
# Scatter plots with multiple groups



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
  geom_point(size=2, shape = 4) + 
  geom_smooth(method = lm)

# Removing the confidence interval

ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point() + 
  geom_smooth(method = lm, se = FALSE)

# Loess method, create discriprtive line within neighbouring scatter dots 

ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point() + 
  geom_smooth()

# Change the line type and color

ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point(size=3, shape = 18) + 
  geom_smooth(method = lm, linetype = "dotted",
              color = "darkgreen")

# Changing the color of confidence interval

ggplot(dataset, aes(x = wt, y = mpg)) + 
  geom_point(size=3, shape = 18, color = "blue") + 
  geom_smooth(method = lm, linetype = "dotted",
              color = "darkgreen", fill = "blue")
# increasing the image quality (1920 width, 1080 height)

# Scatter plot with multiple groups

# Converting the cyl column  from a numeric to factor variable
dataset$cyl = as.factor(dataset$cyl)

# Changing the point shapes by the levels of cyl
ggplot(dataset, aes(x = wt, y = mpg, shape = cyl)) + 
  geom_point()

# Changing the point shapes and color by the levels of cyl

ggplot(dataset, aes(x = wt, y = mpg, shape = cyl, color = cyl)) + 
  geom_point()

# Changing point shapes , color and sizes

ggplot(dataset, aes(x = wt, y = mpg, color = cyl, size = cyl)) + 
  geom_point()

ggplot(dataset, aes(x = wt, y = mpg, size = cyl)) + 
  geom_point()



