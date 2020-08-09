# Problem 69
# https://projecteuler.net/problem=69

# Totient maximum

library(numbers)
library(gmp)

answer <- 0

N <- 1000000

X <- sapply(c(1:N), eulersPhi)
X <- c(1:N) / X

answer <- which.max(X)

# Answer: 
cat("Answer:", answer, "\n")