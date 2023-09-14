 values <- c(90, 50, 70, 80, 70, 60, 20, 30, 80, 90, 20)
mean_value <- mean(values)
median_value <- median(values)
mode_value <- mode(values)

cat("Mean:", mean_value, "\n")
cat("Median:", median_value, "\n")
cat("Mode:", mode_value, "\n")


sorted_values <- sort(unique(values), decreasing = TRUE)
second_highest <- sorted_values[2]
third_lowest <- sorted_values[length(sorted_values) - 2]

cat("2nd Highest Value:", second_highest, "\n")
cat("3rd Lowest Value:", third_lowest, "\n")