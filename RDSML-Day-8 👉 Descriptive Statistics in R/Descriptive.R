
# RDSML-Day-8 👉 Descriptive Statistics in R
# Making the environment ready
# Descriptive statistics using the psych package
# Using the New York airport flight data
# Looking at the first 6 records using the head() function
# How to group descriptive statistics
# Two levels of aggregation

# Descriptive statistics using the psych package

install.packages("psych")
library(psych) # it will give functionality of descriptive statistics, not any datasets

data()
AirPassengers
BOD
BJsales 

# Using the New York airport flight data

install.packages("nycflights13")
attach(nycflights13::flights) # it gives datasets, needs to give attach
attach(nycflights13::flights)

# Lets look at the first 6 records using the head () function

head(nycflights13::flights)
summary(distance) # summary function will not give details.summary base function of R

describe(distance) # describe function will not give details, function of psych package.

demo = cbind(arr_delay, dep_delay, distance) # if I want to bind column, needs to use cbind function
describe(demo)
describe(demo)

