# Marks data
marks <- c(55,60,71,63,55,65,50,55,58,59,
           61,63,65,67,71,72,75)

# Sort the data
marks <- sort(marks)

cat("Sorted Data:\n")
print(marks)

# (a) Equal-Frequency (Equi-depth) Partitioning
bins_equal_freq <- split(marks,
                         ceiling(seq_along(marks)/(length(marks)/3)))

cat("\nEqual-Frequency Partitioning:\n")
print(bins_equal_freq)

# (b) Equal-Width Partitioning
breaks <- seq(min(marks), max(marks), length.out=4)

cat("\nEqual-Width Intervals:\n")
print(breaks)

equal_width <- cut(marks,
                   breaks=breaks,
                   include.lowest=TRUE)

cat("\nEqual-Width Partitioning:\n")
print(split(marks, equal_width))

# Histogram
hist(marks,
     main="Histogram of Student Marks",
     xlab="Marks",
     col="lightblue",
     border="black")