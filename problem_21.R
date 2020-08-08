# Problem 21
# https://projecteuler.net/problem=21

# Amicable numbers
 
library(gmp)
library(numbers)

answer <- 0
N <- 10000

divisor_sums <- rep(0, N)
amicable_numbers <- c()

sum_of_divisors <- function(n) {
    result <- 1
    prime_fac <- factorize(n)
    temp <- 0
    
    for(i in unique(as.numeric(prime_fac))) {
        
        j <- length(which(as.numeric(prime_fac)==i))
        temp <- temp + (1-i**(j+1))/(1-i)
        
        result <- result * temp
    }
    
    return(result - n)
}

for(i in 1:N) {
#    divisor_sums[i] <- sum_of_divisors(i)
     divisor_sums[i] <- sum(divisors(i)) - i
}

for(a in 1:N) {
    for(b in 1:N) {
        if(divisor_sums[a] == b & divisor_sums[b] == a & a != b) {
                amicable_numbers <- c(amicable_numbers, a)
                amicable_numbers <- c(amicable_numbers, b)
        }
    }
}

amicable_numbers <- unique(amicable_numbers)
answer <- sum(amicable_numbers)

# Answer is: 34638
cat("Answer is:", answer, "\n")