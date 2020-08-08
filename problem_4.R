# Problem 4
# https://projecteuler.net/problem=4

#A  palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

# Cycles through all number combinations, starting at 999
for (i in 999:900) {
    for (j in 990:900) {
        word <- as.character(i * j)
        # Create reverse
        reverse <- paste(rev(unlist(strsplit(word, ""))), collapse = "")
        # Check whether palindrome
        palindrome <- word == reverse
        if (palindrome) 
            break
    }
    if (palindrome) {
        break
    }
}

# Answer: 906609
result <- i * j

cat("the largest palindrome made from the product of two 3-digit numbers:",
    result)
