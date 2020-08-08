# Problem 10
# https://projecteuler.net/problem=10

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

prime_list <- Primes(2,2000000)

# Answer is 142913828922
cat("The sum of all the primes below two million is:", sum(prime_list))