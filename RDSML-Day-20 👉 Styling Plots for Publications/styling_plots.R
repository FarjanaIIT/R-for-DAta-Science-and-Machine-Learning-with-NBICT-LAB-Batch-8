# RDSML-Day-20 👉 Styling Plots for Publications
#Making the environment ready (Instructor's Repository)
#Additional learning from this lesson: Publication-ready scatter plots in R
#Installing the necessary packages
#Loading the sample data
#Plotting the data

library(ggplot2)

# install.packages("ggthemes")
library(ggthemes)
#install.packages("viridis")
library(viridis)
library(viridisLite)

# loading the dataset
mtcars
df = mtcars
df$cyl = as.factor(df$cyl)
class(df$cyl)

# styling plot

ggplot(df, aes(x = wt, y = mpg, color = cyl)) +
  geom_point(size = 2) + 
  scale_color_viridis_d(name = "Cylinders") +
  labs(x = "weight", y = "million per gallon", title = "Fuel effeciency") +
  theme_classic(base_size = 8, base_family = "serif") +
theme(plot.title = element_text(face = "bold", size = 16, hjust = 0.5),
      axis.title = element_text(face = "bold", size = 14),
      axis.text = element_text(size = 10),
      legend.position = "bottom",
      legend.title = element_text(face = "bold"),
      legend.text = element_text(size = 12))
  
  


