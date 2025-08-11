# poisson probabilty distribution is rare case.

ppois(q = 3, lambda = 5) - ppois(q = 2, lambda = 5) # 3 or less than 3
dpois(x = 3, lambda = 5) # exactly 3 

library(visualize)

n <- seq(0,5)
n

p = dpois(x = n, lambda = 5)
barplot(p)

visualize.pois(stat = 4, lambda = 10, section = "lower") # less than 4

visualize.pois(stat = 4, lambda = 10, section = "upper") # greater than 4

visualize.pois(stat = c(4,6), lambda = 10, section = "bounded")

visualize.pois(stat = c(2,4), lambda = 5, section = "bounded") # give range

visualize.pois(stat = c(3,3), lambda = 5, section = "bounded") # exactly 3 calls

visualize.pois(stat = c(2,5), lambda = 10, section = "tails") # less than 2 and greatter than 5

grid(nx = NULL, ny = NULL, col = "grey", lty = "dotted")



