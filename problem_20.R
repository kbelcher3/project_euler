# Problem 20
# https://projecteuler.net/problem=20

# Factorial digit sum

library(gmp)
N <- factorialZ(100)
N <- as.character(N)
answer <- sum(as.numeric(unlist(strsplit(N, ""))))

# Answer: 648
cat("Answer:", answer, "\n")