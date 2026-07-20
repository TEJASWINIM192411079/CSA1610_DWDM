# Data
x <- c(200, 300, 400, 600, 1000)

# (a) Min-Max Normalization
min_val <- min(x)
max_val <- max(x)

minmax <- (x - min_val) / (max_val - min_val)

cat("Min-Max Normalization:\n")
print(minmax)

# (b) Z-Score Normalization
mean_val <- mean(x)
sd_val <- sd(x)

zscore <- (x - mean_val) / sd_val

cat("\nZ-Score Normalization:\n")
print(zscore)