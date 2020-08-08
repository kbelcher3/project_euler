# Problem 9
# https://projecteuler.net/problem=9

# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a^22 + b^22 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

answer <- 0

for(a in 1:998) {
    for(b in a:998) {
        c <- 1000 - (a+b)
        if(a^2 + b^2 == c^2) {
            answer <- a*b*c
            a <- 1000
            b <- 1000
        }
    }
}

# Answer is: 31875000
cat("The product abc is:", answer)