# Problem 27
# https://projecteuler.net/problem=27

# Quadratic primes

rm(list=ls())

library(gmp)

A <- 999
B <- 999

nMax <- 0
aMax <- 0
bMax <- 0
answer <- 0

for(a in (-A):A) {
  for(b in (-B):B) {
    n <- 0
    while(isprime(abs(n*n + a*n + b)) == 2) {
      n <- n+1
    }
    if(n > nMax) {
      nMax <- n
      aMax <- a
      bMax <- b
    }
  }
}

answer <- aMax * bMax

# Answer is: -59231
cat("Answer is:", answer, "\n")