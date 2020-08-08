# Problem 18
# https://projecteuler.net/problem=18

# Maximum path sum I

input <- readLines("D:\\dev\\project_euler\\problem_18_input.txt")
input <- strsplit(input, " ")

tree <- matrix(rep(0,225),nrow=15)
for(i in 1:15) {
    tree[i,1:i] <- as.numeric(unlist(input[i]))
}

for(i in 15:2) {
    for(j in 1:14) {
        tree[i-1,j] <- max(tree[i,j:(j+1)]+tree[i-1,j])
        #tree[(i-1)*j] <- max(tree[i*j]+tree[i*j-1], 
        #              tree[i*(j+1)]+tree[i*j-1])
    }
    tree[i,] <- NA
}

answer <- max(tree, na.rm=TRUE)

# Answer: 1074
cat("Answer:", answer, "\n")