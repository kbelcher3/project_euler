# Problem 17
# https://projecteuler.net/problem=17

# Number letter counts

# If the numbers 1 to 5 are written out in words: one, two, three, four,
# five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were written out
# in words, how many letters would be used?


# Vocabulary
single <- c("one", "two", "three", "four", "five", "six", "seven", "eight", "nine")
teens <- c("ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", 
           "seventeen", "eighteen", "nineteen")
tens <- c("ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", 
          "ninety")
numwords <- c(single, teens)
# Create all number words from 1 to 1000
for (i in (length(numwords) + 1):999) {
    numword <- ""
    if (i >= 100) {
        numword <- paste(single[floor(i/100)], "hundred")
        if (i%%100 != 0) 
            numword <- paste(numword, "and")
    }
    remainder <- i - 100 * floor(i/100)
    if (remainder != 0) {
        if (remainder < 20) {
            numword <- paste(numword, c(single, teens)[remainder])
        } else {
            numword <- paste(numword, tens[floor(remainder/10)])
            numword <- paste(numword, single[remainder - 10 * floor(remainder/10)])
        }
    }
    numwords <- c(numwords, numword)
    
}
numwords <- c(numwords, "one thousand")

# Total number of letters excluding spaces
answer <- sum(nchar(gsub(" ", "", numwords)))

# Answer: 21124
cat("Answer:", answer, "\n")
