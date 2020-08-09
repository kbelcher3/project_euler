# Problem 67
# https://projecteuler.net/problem=25

# Maximum path sum II

input <- readLines("D:\\dev\\project_euler\\p067_triangle.txt")
input <- strsplit(input, " ")

tree <- matrix(rep(0,100**2),nrow=100)
for(i in 1:100) {
    tree[i,1:i] <- as.numeric(unlist(input[i]))
}

for(i in 100:2) {
    for(j in 1:99) {
        tree[i-1,j] <- max(tree[i,j:(j+1)]+tree[i-1,j])
        #tree[(i-1)*j] <- max(tree[i*j]+tree[i*j-1], 
        #              tree[i*(j+1)]+tree[i*j-1])
    }
    tree[i,] <- NA
}

answer <- max(tree, na.rm=TRUE)

# Answer: 7273
cat("Answer:", answer, "\n")