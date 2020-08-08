# Problem 15
# https://projecteuler.net/problem=15
 
# Lattice Paths

grid_size <- 20
num_paths <- matrix(rep(0,(grid_size+1)^2),nrow=grid_size+1)

for(i in 1:grid_size) {
    num_paths[i,grid_size+1] <- 1
    num_paths[grid_size+1,i] <- 1
}

# Dynamic programming approach
for(i in grid_size:1) {
    for(j in grid_size:1) {
        num_paths[i,j] <- num_paths[i+1,j] + num_paths[i,j+1]
    }
}

# Answer: 137846528820
cat("DP Answer:", num_paths[1,1], "\n")

# Combinatorial approach
num_paths_2 <- 1
for(i in 1:grid_size) {
    num_paths_2 <- num_paths_2 * (2 * grid_size - (i-1)) / i
}

cat("Combo Answer:", num_paths_2, "\n")