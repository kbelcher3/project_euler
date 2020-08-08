# Problem 14
# https://projecteuler.net/problem=14

 
# The following iterative sequence is defined for the set of positive integers:

# n <- n/2 (n is even)
# n <- 3n + 1 (n is odd)

answer <- 0

collatz_length <- rep(0, 1000000)
for(n in 2:1000000) {
    counter <- 0
    x <- n
    while(x != 1 & x >= n) {
        if(x %% 2 == 0) {
            x <- x/2
        }
        else {
            x <- 3*x+1
        }
        counter <- counter + 1
    }
    counter <- counter + collatz_length[x]
    collatz_length[n] <- counter
}

answer <- which.max((collatz_length))

# Answer: 837799
cat("Answer:", answer, "\n")