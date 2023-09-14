random_numbers <- rnorm(1000, mean = 50, sd = 10)
table_of_occurrences <- table(random_numbers)
print(table_of_occurrences)