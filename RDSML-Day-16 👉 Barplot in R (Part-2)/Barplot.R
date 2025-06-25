#RDSML-Day-16 👉 Barplot in R (Part-2)
#Making the environment ready (Instructor's Repository)
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

#Changing barplot line colors by groups

print(dataset)

ggplot(dataset, aes(x = dose, y = len, color = dose)) +
  geom_bar(stat = "identity", fill = "white")
  
#Using custom color palettes

ggplot(dataset, aes(x = dose, y = len, color = dose)) +
  geom_bar(stat = "identity", fill = "white") +
  scale_color_manual(values = c("white", "red", "blue"))  # search on hexadecimal color picker


#Using brewer color palettes

ggplot(dataset, aes(x = dose, y = len, color = dose)) +
  geom_bar(stat = "identity", fill = "white") +
  scale_color_brewer(palette = "Dark2") # search on color brewer pallets in r.

 
#Using a grey scale   

ggplot(dataset, aes(x = dose, y = len, color = dose)) +
  geom_bar(stat = "identity", fill = "white") +
  scale_color_grey() +
  theme_classic()

# Changing bar plot fill colors by groups

p = ggplot(dataset, aes(x = dose, y = len, fill = dose)) +
  geom_bar(stat = "identity") +
  theme_minimal()

p + scale_fill_manual(values = c("white", "red", "blue"))

p + scale_fill_brewer(palette = "Dark2")

p + scale_fill_grey()

##Using a black outline color

ggplot(dataset, aes(x = dose, y = len, fill = dose)) +
  geom_bar(stat = "identity", color = "black") +
  scale_color_manual(values = c("#85713a", "#c72ce6", "#f00a24")) +
  theme(legend.position = "top")


   