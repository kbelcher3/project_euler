# Problem 6
# https://projecteuler.net/problem=6

# Find the difference between the sum of the squares of the first one hundred
# natural numbers and the square of the sum.

difference <- function(n) {
    return(1/12* (-1 + n)* n* (1 + n) *(2 + 3* n))
}

# Answer is: 25164150
cat("Answer is:", difference(100))