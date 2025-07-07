# Loading the dataset
ToothGrowth
myData = ToothGrowth

#Converting the dose variable from factor to numeric

myData$dose = as.factor(myData$dose)
class(myData$dose)

# Basic boxplot
library(ggplot2)

ggplot(myData, aes(x = dose, y = len)) + 
  geom_boxplot()

# Rotating the box plot

ggplot(myData, aes(x = dose, y = len)) + 
  geom_boxplot() + 
  coord_flip()

# Notched box plot

ggplot(myData, aes(x = dose, y = len)) + 
  geom_boxplot(notch = T) 

# Changing outlier color, shape and size

ggplot(myData, aes(x = dose, y = len)) + 
  geom_boxplot(outlier.color = "red", outlier.shape = 7, outlier.size = 3) 


#Choosing which items to display

ggplot(myData, aes(x = dose, y = len)) + 
  geom_boxplot(outlier.color = "red", outlier.shape = 7, outlier.size = 3) +
  scale_x_discrete(limits = c("0.5", "2"))

#Changing box plot line colors by groups

ggplot(myData, aes(x = dose, y = len, color = dose)) + 
  geom_boxplot() 
  
#Changing the item order

ggplot(myData, aes(x = dose, y = len, color = dose)) + 
  geom_boxplot() +
  scale_x_discrete(limits = c("2", "0.5"))
                  
# Box plot with multiple groups

ggplot(myData, aes(x = dose, y = len, fill = supp)) + 
  geom_boxplot() 
  
# Changing the box position

ggplot(myData, aes(x = dose, y = len, fill = supp)) + 
  geom_boxplot(position = position_dodge(0.9)) 








