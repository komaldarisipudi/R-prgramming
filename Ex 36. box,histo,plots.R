# Load the required library
library(reshape2)

# Load the ChickWeight dataset
data(ChickWeight)

# (i) Order the data frame by "weight" in ascending order, grouped by "diet",
# and extract the last 6 records
ordered_data <- ChickWeight[order(ChickWeight$weight), ]
last_6_records <- tail(ordered_data, 6)
print(last_6_records)

# (ii) (a) Melt the data based on "Chick", "Time", and "Diet" as ID variables
melted_data <- melt(ChickWeight, id.vars = c("Chick", "Time", "Diet"))

# (ii) (b) Cast function to display the mean value of weight grouped by Diet
mean_weight_by_diet <- dcast(melted_data, Diet ~ variable, fun.aggregate = mean)
print(mean_weight_by_diet)

# (ii) (c) Calculate the mode function
calculate_mode <- function(x) {
  tbl <- table(x)
  mode_val <- as.numeric(names(tbl[tbl == max(tbl)]))
  return(mode_val)
}

# Apply the mode calculation to melted_data and cast the results
mode_weight_by_diet <- dcast(melted_data, Diet ~ variable, fun.aggregate = calculate_mode)
print(mode_weight_by_diet)