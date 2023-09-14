library(reshape2)
data("airquality")
summary_stats <- summary(airquality)
print(summary_stats)
melted_data <- melt(airquality)
print(melted_data)
melted_data_id <- melt(airquality, id.vars = c("Month", "Day"))
print(melted_data_id)
casted_data <- dcast