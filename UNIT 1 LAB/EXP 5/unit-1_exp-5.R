# Age data
age <- c(23,23,27,27,39,41,47,49,50,
         52,54,54,56,57,58,58,60,61)

# Body fat data
fat <- c(9.5,26.5,7.8,17.8,31.4,25.9,27.4,27.2,31.2,
         34.6,42.5,28.8,33.4,30.2,34.1,32.9,41.2,35.7)

# (a) Mean, Median, Standard Deviation
cat("Age\n")
cat("Mean =", mean(age), "\n")
cat("Median =", median(age), "\n")
cat("Standard Deviation =", sd(age), "\n\n")

cat("Body Fat\n")
cat("Mean =", mean(fat), "\n")
cat("Median =", median(fat), "\n")
cat("Standard Deviation =", sd(fat), "\n")

# (b) Boxplots
boxplot(age, main="Boxplot of Age", col="lightblue")
boxplot(fat, main="Boxplot of Body Fat", col="lightgreen")

# (c) Scatter Plot
plot(age, fat,
     main="Age vs Body Fat",
     xlab="Age",
     ylab="% Fat",
     pch=19,
     col="blue")

# Q-Q Plots
qqnorm(age)
qqline(age, col="red")

qqnorm(fat)
qqline(fat, col="red")