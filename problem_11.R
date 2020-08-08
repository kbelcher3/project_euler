# Problem 11
# https://projecteuler.net/problem=11

# What is the greatest product of four adjacent numbers in the same direction
# (up, down, left, right, or diagonally) in the 20×20 grid?

# Read data from text file and convert into matrix
A <- readLines("D:\\dev\\project_euler\\problem_11_input.txt")
A <- as.numeric(unlist(lapply(A, function(x) {
    strsplit(x, " ")
})))
A <- matrix(A, ncol=20)

prod_down <- A[1:17, ] * A[2:18, ] * A[3:19, ] * A[4:20, ]
prod_right <- A[, 1:17] * A[, 2:18] * A[, 3:19] * A[, 4:20]
prod_down_right <- A[1:17, 1:17] * A[2:18, 2:18] *
    A[3:19, 3:19] * A[4:20, 4:20]
prod_down_left <- A[4:20, 1:17] * A[3:19, 2:18] *
    A[2:18, 3:19] * A[1:17,  4:20]
answer <- max(prod_down, prod_right, prod_down_right, prod_down_left)

# Answer is: 70600674
cat("The answer is:", answer, "\n")