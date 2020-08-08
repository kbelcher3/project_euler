# Problem 13
# https://projecteuler.net/problem=13

# Large Sum
library(gmp)

input <- readLines("D:\\dev\\project_euler\\problem_13_input.txt")
sum_of_numbers <- as.bigz(sum(as.numeric(input)))
answer <- substr(as.character(sum_of_numbers), 1, 10)

# Answer: 5537376230
cat("Answer:", answer, "\n")
