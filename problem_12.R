# Problem 12
# https://projecteuler.net/problem=12

# Highly divisible triangular number

library(numbers)
library(Zseq)

triangle_numbers <- Triangular(12500)
answer <- 0

for(i in 12000:length(triangle_numbers)) {
    if(length(divisors(as.integer(triangle_numbers[i]))) >= 500) {
        answer <- as.integer(triangle_numbers[i])
        break
    }
}


# Answer: 76576500
cat("Answer:", answer, "\n")
