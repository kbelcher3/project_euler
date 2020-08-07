 # Problem 1
# https://projecteuler.net/problem=1

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

# Generate the multiples of 3, 5, and 15
mult_3 <- seq(1,1000,3)
mult_5 <- seq(1,1000,5)
mult_15 <- seq(1,1000,15)

# Sum the multiples of 3 and 5, and subtract the sum of the multiples
# of 15 to avoid double-counting
result <- sum(mult_3) + sum(mult_5) - sum(mult_15)

# Answer: 233635
cat("The sum of all the multiples of 3 or 5 below 1000:", result)