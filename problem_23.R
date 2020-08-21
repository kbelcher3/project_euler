# Problem 23
# https://projecteuler.net/problem=23

#Non-abundant sums

rm(list=ls())
library(numbers)
library(gmp)

answer <- 0
N <- 28123
abundant_num <- c()

for(i in 1:N) {
    divisor_sum <- sum(divisors(i)) - i
    if(divisor_sum > i) {
        abundant_num <- c(abundant_num, i)
    }
}

abundant_sum <- rep(FALSE, N)

for(i in 1:length(abundant_num)) {
    for(j in i:length(abundant_num)) {
        if(abundant_num[i] + abundant_num[j] <= N) {
            abundant_sum[abundant_num[i] + abundant_num[j]] <- TRUE
        }
        else {
            break
        }
    }
}

for(i in 1:N) {
    if(!abundant_sum[i]) {
        answer <- answer + i
    }
}

# Answer is: 
cat("Answer is:", answer, "\n")