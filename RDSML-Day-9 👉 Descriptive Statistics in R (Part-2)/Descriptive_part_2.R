# RDSML-Day-9 👉 Descriptive Statistics in R (Part-2)
# Making the environment ready
# More with Descriptive statistics using the psych package
# Introducing the colnames() function
# Introducing the hist() function
# How to group descriptive statistics
# Two levels of aggregation

# Descriptive statistics using the psych package

# install.packages("psych")
library(psych)

data()
AirPassengers
BOD

# Using the New York airport flight data
# install.packages("nycflights13")
attach(nycflights13::flights)

# Lets look at the first 6 records using the head() function
head(nycflights13::flights)
distance
summary(distance)
describe(distance)

demo = cbind(arr_delay, dep_delay, distance)
describe(demo)   

# Introducing the colnames() function
colnames(demo) = c('Arrival delay', 'Departure delay', 'Distance travelled')

describe(demo) 

# Introducing the hist() function

dep_delay

hist(dep_delay)

# How to group descriptive statistics

head(nycflights13::flights)

# we work with connected two variables

summary(carrier)

carrier_factor = factor(carrier)
summary(carrier_factor)

carrier_factor = as.factor(carrier)
summary(carrier_factor)

describeBy(distance, group = carrier)

# Two levels of aggregation

# we will connect three variables. we want to separte according to carrier and month followed by the removal of missing data

aggregate(distance, by = list(carrier, month), FUN = mean, na.rm = TRUE) # remove of missing data to get accurate mean

aggregate(distance, by = list(carrier, month), FUN = sd, na.rm = TRUE)

aggregate(distance, by = list(carrier, month), FUN = se, na.rm = TRUE)

