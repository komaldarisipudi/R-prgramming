# Load the airquality dataset
data("airquality")

# i. Compute the mean temperature (without using built-in function)
mean_temp <- sum(airquality$Temp) / nrow(airquality)

# ii. Extract the first five rows
first_five_rows <- head(airquality, 5)

# iii. Extract all columns except Temp and Wind
columns_to_keep <- !(colnames(airquality) %in% c("Temp", "Wind"))
airquality_without_temp_wind <- airquality[, columns_to_keep]

# iv. Find the coldest day
coldest_day <- airquality$Day[which.min(airquality$Temp)]

# v. Count days with wind speed greater than 17 mph
wind_gt_17_count <- sum(airquality$Wind > 17)

# Display the results
cat("i. Mean Temperature:", mean_temp, "\n")
cat("ii. First Five Rows:\n")
print(first_five_rows)
cat("iii. airquality without Temp and Wind Columns:\n")
print(airquality_without_temp_wind)
cat("iv. Coldest Day:", coldest_day, "\n")
cat("v. Days with Wind Speed > 17 mph:", wind_gt_17_count, "\n")