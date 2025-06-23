#RDSML-Day-15 👉 Barplot in R (Part-1)
#Making the environment ready (Instructor's Repository)
#Creating a data frame
#Basic barplot
#Horizontal bar plot
#Changing the width of bars
#Changing colors
#Minimal theme + blue fill color
#Bar plot with labels
#Barplot of counts
#Changing barplot line colors by groups
#Using custom color palettes
#Using brewer color palettes
#Using a grey scale
#Changing barplot fill colors by groups
#Using custom color palettes
#Using brewer color palettes
#Using a grey scale
#Using a black outline color
#Changing the legend position
#Changing bar fill colors to blues
#Removing legend

# Creating dataframe

dataset = data.frame(dose = c("D0.5", "D1", "D2"), 
                     len = c(4.2, 10, 29.5),
                     gsg = c(45, 77, 7))
write.csv(dataset, "my_data.csv")

library(ggplot2)

# Basic barplot
ggplot(data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity")

#Horizontal bar plot

ggplot(data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity") +
  coord_flip()

#Changing the width of bars

ggplot(data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity", width = 0.7) 


#Changing colors

ggplot(data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity", width = 0.7, color = "red", fill = "red") 

#Minimal theme + blue fill color

ggplot(data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_minimal()

#Bar plot with labels

ggplot(data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  geom_text(aes(label = len), vjust = -1, size = 3.5, color = "#333333") +
  theme_minimal() 

# Inside bar

ggplot(data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  geom_text(aes(label = len), vjust = 1.6, size = 3.5, color = "white") +
  theme_minimal() 

myCarData = mtcars

#Barplot of counts
# to make a barplot of counts, we will use mtcars dataset.

ggplot(data = myCarData, aes(x = factor(cyl))) +
  geom_bar(stat = "count", width = 0.5, fill = "steelblue") +
  theme_minimal()

