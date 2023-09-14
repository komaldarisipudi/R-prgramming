# Load the required library
library(dplyr)

# Load the ChickWeight dataset
data(ChickWeight)

# Convert the "Diet" variable to a factor
ChickWeight$Diet <- as.factor(ChickWeight$Diet)

# (a) Create a multi regression model using "Time" and "Diet" as predictor variables
model <- lm(weight ~ Time + Diet, data = ChickWeight)

# (b) Predict weight for Time=10 and Diet=1
new_data <- data.frame(Time = 10, Diet = factor(1))  # Make sure to treat Diet as factor
predicted_weight <- predict(model, newdata = new_data)
print(paste("Predicted weight for Time=10 and Diet=1:", predicted_weight))

# (c) Find the error in the model for the same prediction
actual_weight <- ChickWeight %>%
  filter(Time == 10, Diet == 1) %>%
  select(weight) %>%
  pull()

error <- actual_weight - predicted_weight
print(paste("Error in prediction:", error))