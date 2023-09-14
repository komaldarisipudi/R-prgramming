# Load required libraries
library(dplyr)
library(caTools)  # For splitting the data
library(glmnet)   # For logistic regression
library(caret)    # For confusion matrix

# Load the Iris dataset
data("iris")

# Selecting required columns
iris_subset <- iris %>% select(Species, Petal.Length, Petal.Width)

# Set a random seed for reproducibility
set.seed(123)

# Splitting the data into training and test sets (80% - 20%)
split <- sample.split(iris_subset$Species, SplitRatio = 0.8)
train_data <- subset(iris_subset, split == TRUE)
test_data <- subset(iris_subset, split == FALSE)

# Create a logistic regression model
log_model <- glm(Species ~ Petal.Length + Petal.Width, data = train_data, family = "binomial")

test_probs <- predict(log_model, newdata = test_data, type = "response")

predicted_classes <- ifelse(test_probs > 0.5, "versicolor", "setosa")
confusion <- confusionMatrix(predicted_classes, test_data$Species)

print(confusion)s