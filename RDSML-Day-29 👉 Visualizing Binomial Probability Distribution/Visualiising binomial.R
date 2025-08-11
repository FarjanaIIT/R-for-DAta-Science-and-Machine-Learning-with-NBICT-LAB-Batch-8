dbinom(x = 4, size = 10, prob = 0.5) # exact 4.
pbinom(q = 4, size = 10, prob = 0.5) # 4 head or less than 4

n <- c(0:10)
n

p <- dbinom(x = n, size = 10, prob = 0.5)
barplot(p)

library(visualize)
visualize.binom(stat = 4, size = 10, prob = 0.5, section = "lower")
pbinom(q = 4, size = 10, prob = 0.5)

visualize.binom(stat = 4, size = 10, prob = 0.5, section = "upper")

visualize.binom(stat = c(3,7), size = 10, prob = 0.5, section = "bounded") 

visualize.binom(stat = 4, size = 10, prob = 0.5)                
grid(nx = NULL, ny = NULL, col = "grey", lty = "dottted")


