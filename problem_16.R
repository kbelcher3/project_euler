# Problem 16
# https://projecteuler.net/problem=16

# Power digit sum
# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
# What is the sum of the digits of the number 2^1000?

N <- as.bigz(2^1000)  
answer <- sum(as.numeric(unlist(strsplit(as.character(N), ""))))

# Answer: 1366
cat("Answer:", answer, "\n")