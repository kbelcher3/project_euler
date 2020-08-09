# Problem 23
# https://projecteuler.net/problem=23

#Non-abundant sums

library(numbers)
library(gmp)

non_abundant <- c()
abundant <- c()
answer <- 0
N <- 28123
divisor_sums <- rep(0, N)

for(i in 1:N) {
    divisor_sums[i] <- sum(divisors(i)) - i
}

for(i in 1:N) {
    is_abundant <- FALSE
    for(j in 1:N) {
        for(k in j:N) {
            if(i == divisor_sums[j] + divisor_sums[k]) {
                is_abundant <- TRUE
                break
            }
        }
    }
    if(is_abundant) {
        abundant <- c(abundant, i)
        cat(i, "is abundant")
    }
    else {
        non_abundant <- c(non_abundant, i)
        answer <- answer + i
        cat(i, "is non-abundant")
    }
}

# Answer is: 
cat("Answer is:", answer, "\n")