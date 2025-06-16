# RDSML-Day-13 👉 Histogram in R (Part-1)
# Making the environment ready (Instructor's Repository)
# Downloading the practice file
# Importing the dataset
# Importing the library
# Basic histogram using ggplot2
# Changing the width of bins
# Changing colors
# Adding the mean line
# Histogram with density plot
# Changing line color and fill color
# Uploading the work to GitHub


# Importing the dataset
dataset = read.csv("data.csv")

# Importing the library
library(ggplot2)


# Basic histogram using ggplot2

ggplot(dataset, aes(x = weight)) +
  geom_histogram()

# Changing the width of bins

ggplot(dataset, aes(x = weight)) +
  geom_histogram(binwidth = 1, color = "black")

# Changing colors
myPlot = ggplot(dataset, aes(x = weight)) +
  geom_histogram(color = "black", fill = "lightblue")

# Adding the mean line

myPlot + geom_vline(aes(xintercept = mean(weight)),
                    color = "blue", linetype = "dotted", size = 1)

# Histogram with density plot

ggplot(dataset, aes(x = weight)) +
  geom_histogram(aes(y = after_stat(density)), color = "black", fill = "white") +
  geom_density(fill = "blue", alpha = .3)


# Changing bin color and fill color

ggplot(dataset, aes(x = weight)) +
  geom_histogram(color = "darkblue", fill = "lightblue")





