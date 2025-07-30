install.packages("visualize")
library(visualize)
pnorm(-1.96) # it pnorm gives left sides probability.
# Visualising normal distribution
qnorm(0.5)
visualize.norm(stat = -1.96)
visualize.norm(stat = 1.96, section = "upper")
visualize.norm(stat = c(-1.96, 1.96), section = "bounded")
visualize.norm(stat = c(-1.96, 1.96), section = "tails")
visualize.norm(stat = c(-1, 1), section = "bounded")
visualize.norm(stat = c(-2, 2), section = "bounded")
visualize.norm(stat = c(-3, 3), section = "bounded")
visualize.norm(stat = c(-3, 3), section = "tails")
1 - pnorm(2)
pnorm(2)

pnorm(3)

1 - pnorm(3)
visualize.norm(stat = 77, mu = 75, sd = 1, section = "lower")
1 - pnorm(77, mean = 75, sd = 1)


