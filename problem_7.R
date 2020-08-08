# Problem 7
# https://projecteuler.net/problem=7

# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
# we can see that the 6th prime is 13.

#What is the 10,001st prime number?

library(primes)

i <- 1
latest_prime <- 2
while(i < 10001) {
    latest_prime <- next_prime(c(latest_prime:(latest_prime+2)))
    i <- i+1
}

# Answer is: 104743
cat("Answer is:", latest_prime[1], "\n")