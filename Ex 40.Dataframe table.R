# Create the data frame
data_df <- data.frame(
  Month = 1:12,
  Spends = c(1000, 4000, 5000, 4500, 3000, 4000, 9000, 11000, 15000, 12000, 7000, 3000),
  Sales = c(9914, 40487, 54324, 50044, 34719, 42551, 94871, 118914, 158484, 131348, 78504, 36284)
)

# (b) Create a regression model
model <- lm(Sales ~ Spends, data = data_df)
summary(model)

# (c) Predict Sales for Spend=13500
new_data <- data.frame(Spends = 13500)
predicted_sales <- predict(model, newdata = new_data)
print(paste("Predicted Sales for Spend=13500:", predicted_sales))