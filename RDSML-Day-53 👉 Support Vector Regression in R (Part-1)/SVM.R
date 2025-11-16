# Set up: packages and data loading

install.packages("e1071")
library(e1071)
library(ggplot2)
library(dplyr)

# Loading the dataset 
dataset = read.csv("day.csv")

# Basic cleaning and feature selection
bike = dataset %>%
 select(cnt, temp, atemp, hum, windspeed, season, yr, mnth,
        holiday, weekday, workingday, weathersit)

# Convert categorical variables to factors

bike = bike %>%
 mutate(
   season = factor(season), 
   yr = factor(yr),
   mnth = factor(mnth),
   holiday = factor(holiday),
   weekday = factor(weekday),
   workingday = factor(workingday),
   weathersit = factor(weathersit)
 )
str(bike)

