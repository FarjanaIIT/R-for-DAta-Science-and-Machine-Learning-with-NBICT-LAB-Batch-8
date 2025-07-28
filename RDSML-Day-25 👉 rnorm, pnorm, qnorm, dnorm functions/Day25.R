#rnorm
x <- rnorm(10000, mean = 0, sd = 1)
mean(x)
sd(x)


y <- rnorm(10, mean = 100, sd = 5)
mean(y)
sd(y)

#pnorm

# At z = 0 the value of probability is 0.5
pnorm(0)
pnorm(-1.96)
pnorm(-1.64)

#qnorm
qnorm(0.5)
pnorm(1.96)

#dnorm

dnorm(0)

#Lets use dnorm to draw the normal distribution

zvalues <- seq(-4.0, 4.0, by = 0.1)
dvalues <- dnorm(zvalues)

plot(zvalues, dvalues)
