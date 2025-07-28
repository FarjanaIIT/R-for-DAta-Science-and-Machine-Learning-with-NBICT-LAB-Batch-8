#RDSML-Day-22 👉 Central Limit Theorem Using R
#Explanation File 👉 RDSML-B-8
#What is a uniform distribution?
  #What is a normal distribution?
  #Generating random numbers of uniform distribution
#CLT in R
#For loop in R


# Demonstrating CLT

# Generating 10000 numbers of uniform distribution

r <- runif(10000)
hist(r)

meanr <- mean(r)
sdr <- sd(r)

# Draw 3 random samples from the distribution
samples1 <- sample(r, 4)
samples2 <- sample(r, 4)
samples3 <- sample(r, 4)

mean(samples1)
mean(samples2)
mean(samples3)

# run a for loop

cl100 <- mean(sample(r, 100))



for (i in 1:1000){
  cl10 <- c(cl10 <- mean(sample(r, 10)))
}
  
hist(cl10)


for (i in 1:1000){
  cl100 <- c(cl100, mean(sample(r,100)))
}

hist(cl100)
