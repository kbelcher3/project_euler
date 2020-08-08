# Problem 3
# https://projecteuler.net/problem=3

# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

# Set large number
N <- 600851475143

# Use GNU Multi-Precision Library
library(gmp)

# Answer: 6857
result <- factorize(N)

print("The largest prime factor of the number 600851475143 is: ")
print(result[length(result)])