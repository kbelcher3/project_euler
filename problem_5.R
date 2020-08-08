# Problem 4
# https://projecteuler.net/problem=4

# 2520 is the smallest number that can be divided by each of the numbers
# from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of
# the numbers from 1 to 20?


evenly_divisible <- function(n) {
    p_factors <- Primes(2,n)
    result <- 1
    for(i in 1:length(p_factors)) {
        foo <- 1
        while(p_factors[i]^foo < n) {
            result <- result * p_factors[i]
            foo <- foo +  1
        }
    }
    return(result)
}

# Answer: 232792560
result <- evenly_divisible(20)

cat("Smallest positive number that is evenly divisible by all of the numbers
    from 1 to 20: ")
cat(result)