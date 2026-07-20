# Speed data
speed <- c(78.3,81.8,82,74.2,83.4,
           84.5,82.9,77.5,80.9,70.6)

# Quartiles
Q1 <- quantile(speed, 0.25)
Q3 <- quantile(speed, 0.75)

# Interquartile Range
IQR_value <- IQR(speed)

# Standard Deviation
SD_value <- sd(speed)

# Display results
cat("First Quartile (Q1) =", Q1, "\n")
cat("Third Quartile (Q3) =", Q3, "\n")
cat("Interquartile Range =", IQR_value, "\n")
cat("Standard Deviation =", SD_value, "\n")