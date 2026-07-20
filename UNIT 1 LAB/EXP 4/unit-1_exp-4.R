# Data
x <- c(11,13,13,15,15,16,19,20,
       20,20,21,21,22,23,24,30,
       40,45,45,45,71,72,73,75)

# Create bins of size 8
bins <- split(x, ceiling(seq_along(x)/8))

# (a) Smoothing by Bin Mean
bin_mean <- lapply(bins, function(b) rep(mean(b), length(b)))
cat("Smoothing by Bin Mean:\n")
print(unlist(bin_mean))

# (b) Smoothing by Bin Median
bin_median <- lapply(bins, function(b) rep(median(b), length(b)))
cat("\nSmoothing by Bin Median:\n")
print(unlist(bin_median))

# (c) Smoothing by Bin Boundaries
bin_boundary <- lapply(bins, function(b){
  low <- min(b)
  high <- max(b)
  sapply(b, function(x)
    if(abs(x-low) <= abs(x-high)) low else high)
})

cat("\nSmoothing by Bin Boundaries:\n")
print(unlist(bin_boundary))