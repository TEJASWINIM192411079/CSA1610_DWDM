# Class intervals
lower <- c(1, 5, 15, 20, 50, 80)
upper <- c(5, 15, 20, 50, 80, 110)

# Frequencies
freq <- c(200, 450, 300, 1500, 700, 44)

# Total frequency
N <- sum(freq)

# Cumulative frequency
cf <- cumsum(freq)

# Find median class
median_index <- which(cf >= N/2)[1]

L <- lower[median_index]
f <- freq[median_index]
CF <- ifelse(median_index == 1, 0, cf[median_index - 1])
h <- upper[median_index] - lower[median_index]

# Median calculation
median_value <- L + ((N/2 - CF) / f) * h

cat("Approximate Median =", median_value)
