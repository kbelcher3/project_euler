# Problem 67
# https://projecteuler.net/problem=25

# Maximum path sum II

# Clear variables
rm(list=ls())

# Used to measure execution time
# install.packages("microbenchmark")
library("microbenchmark")

prepare_input <- function() {
    # Read input data by line, producing a character vector 
    input <- readLines("D:\\dev\\project_euler\\p067_triangle.txt")
    # Split each element of the character vector into substrings consisting of
    # each number in the corresponding line enclosed by " "
    input <- strsplit(input, " ")
    
    # Use a matrix to represent the input data numerically
    tree <- matrix(rep(0,100**2),nrow=100)
    # Extract the numbers from the result of the strsplit input and store them
    # in the rows of the matrix
    for(i in 1:100) {
        tree[i,1:i] <- as.numeric(unlist(input[i]))
    }
    
    return(tree)
}

# Compute maximum path sum using dynamic programming
compute_answer <- function(tree) {
for(i in 100:2) {
    for(j in 1:99) {
        tree[i-1,j] <- max(tree[i,j:(j+1)]+tree[i-1,j])
        }
    tree[i,] <- NA
    }
    
return(max(tree, na.rm=TRUE))
}

answer <- compute_answer(prepare_input())
# Answer: 7273
cat("Answer:", answer, "\n")

# Show benchmark results
prepared_tree <- prepare_input()
bm <- summary(microbenchmark(prepare_input(), compute_answer(prepared_tree)))
cat("\nUnit:milliseconds\n")
print(data.frame(expr=bm$expr, 
                 min=bm$min,
                 mean=bm$mean, 
                 max=bm$max,
                 neval=bm$neval))