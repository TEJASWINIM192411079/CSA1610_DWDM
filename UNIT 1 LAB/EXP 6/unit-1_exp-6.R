# Age data
age <- c(23,23,27,27,39,41,47,49,50,
         52,54,54,56,57,58,58,60,61)

x <- 35

# (i) Min-Max Normalization
minmax <- (x - min(age)) / (max(age) - min(age))

# (ii) Z-Score Normalization
mean_age <- mean(age)
sd_age <- 12.94

zscore <- (x - mean_age) / sd_age

# (iii) Decimal Scaling
j <- nchar(as.character(max(age)))
decimal <- x / (10^j)

cat("Min-Max Normalization =", minmax, "\n")
cat("Z-Score Normalization =", zscore, "\n")
cat("Decimal Scaling =", decimal, "\n")