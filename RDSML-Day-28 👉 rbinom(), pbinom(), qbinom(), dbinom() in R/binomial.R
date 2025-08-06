# Explaining rbiome()
# rbinom(n, size, prob) generate random numbers from a binomial distribution
# Here:
#n: Number of random values to generate
#size: Number of trials in each binomial experiment
# prob: Probality of success in each trial

rbinom(n = 10, size = 1, prob = 0.5)

#Here:
#10--> Number of random values to generate (n = 10)
# 1--> Number of trials in each binominal experiment (size = 1)
# 0.5--> Probability of success on each trial (prob = 0.5)

rbinom(n = 15, size = 10, prob = 0.5)


# Explaining pbiome()
# pbinom() gives the cumulative probability of getting q or fewer successes
# in a binomial distribution

# syntax: pbinom(q, size, prob)
#Here:
#q--> The number of successes
#size--> Number of trials
#prob--> probability of success in each trial

pbinom(q = 5, size = 10, prob = 0.5)

# The result means there's about a 62.3% chance of getting 5 or fewer successes 
# in 10 trials (e.g., getting 5 or fewer heads in 10 fair coin tosses)


# Explaining qbinom()
# What is the smallest number of successes x in 10 trials 
# (with 50% successes each chances) such that the probability of getting x or fewe
# successes in at least 30%?

qbinom(p = 0.30, size = 10, prob = 0.5)

# p = 0.3 --> cumulative probability (30%)
# size = 10--> number of trials
# prob = 0.5--> probability of success

# Explaining dbinom
# Calculating the probability of getting exact number of success

dbinom(x = 3, size = 5, prob = 0.5)
dbinom(x = 3, size = 10, prob = 0.25)

#dbinom(x, size, prob)
# x = 3--> number of successes you want
# size = 5 --> number of independent trials
# prob = 0.5 --> probability of success


