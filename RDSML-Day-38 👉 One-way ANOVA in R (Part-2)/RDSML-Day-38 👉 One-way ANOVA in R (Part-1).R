# one-way ANOVA test

PlantGrowth <- PlantGrowth

library(dplyr)
# Computing the group means, sd, and se

stats <- PlantGrowth %>%

  group_by(group) %>%

summarize(
  mean = mean(weight),
  sd = sd(weight),
  se = sd(weight) / sqrt(n())
  )

print(stats)

#Visualizing the data using boxplots

boxplot(weight ~ group, 
        data = PlantGrowth, 
        main = "PlantGrowth data",
        ylab = "Dried weight of plants", 
        col = "lightgray"
        )

install.packages("ggpubr")

library(ggpubr)

library(ggplot2)

# Visualizing the data using mean plots

ggline(PlantGrowth,
       x = "group",
       y = "weight",
       add = c("mean_se", "jitter"))

# Running the ANOVA test
anova <- aov(weight ~ group, data = PlantGrowth)

summary(anova)
