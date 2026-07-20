# Create a vector
pencils <- c(9,25,23,12,11,6,7,8,9,10)

# Mean
mean_value <- mean(pencils)

# Median
median_value <- median(pencils)

# Mode
freq <- table(pencils)
mode_value <- names(freq)[freq == max(freq)]

# Display results
cat("Mean =", mean_value, "\n")
cat("Median =", median_value, "\n")
cat("Mode =", mode_value, "\n")