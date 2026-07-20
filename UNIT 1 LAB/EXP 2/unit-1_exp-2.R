age <- c(13,15,16,16,19,20,20,21,22,22,25,25,25,25,
         30,33,33,35,35,35,35,36,40,45,46,52,70)
# (a) Mean and Median
mean_age <- mean(age)
median_age <- median(age)
cat("Mean =", mean_age, "\n")
cat("Median =", median_age, "\n")
# (b) Mode
freq <- table(age)
mode_age <- names(freq)[freq == max(freq)]
cat("Mode =", mode_age, "\n")
cat("Frequency of Mode =", max(freq), "\n")
# (c) Midrange
midrange <- (min(age) + max(age)) / 2
cat("Midrange =", midrange, "\n")
# (d) First Quartile and Third Quartile
quartiles <- quantile(age)
cat("Q1 =", quartiles[2], "\n")
cat("Q3 =", quartiles[4], "\n")