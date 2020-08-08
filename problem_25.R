# Problem 25
# https://projecteuler.net/problem=25

# 1000-digit Fibonacci number

library(numbers)
library(gmp)
library(TeachingDemos)


N <- 5000
F <- as.bigz(rep(0, N))
F[1] <- 1
F[2] <- 1

fib <- function(n) {
    if(n<=2) {
        return(1)
    }
    else if(F[n] > 0) {
        return(F[n])
    }
    else {
        F[n] <- fib(n-1) + fib(n-2)
        return(F[n])
    }
}


for(i in 1:N) {
    F[i] <- fib(i)
}

for(i in N:1) {
    if(length(digits(F[i])) < 1000) {
        answer <- i+1
        break
    }
}

# Answer is 
cat("Answer is:", answer, "\n")