# Load the required library
library(ggplot2)
library(dplyr)

# Load the Titanic dataset
data(Titanic)

# Convert Titanic table to a data.frame
titanic_df <- as.data.frame(Titanic)

# (a) Draw a Bar chart to show details of "Survived" on the Titanic based on passenger Class
barplot_class_survived <- ggplot(titanic_df, aes(x = Class, fill = factor(Survived))) +
  geom_bar(position = "stack") +
  labs(title = "Survival Status by Passenger Class",
       x = "Passenger Class",
       y = "Count",
       fill = "Survived")

# (b) Modify the above plot based on gender of people who survived
barplot_class_gender_survived <- ggplot(titanic_df, aes(x = Class, fill = factor(Survived))) +
  geom_bar(position = "stack") +
  facet_grid(. ~ Sex) +
  labs(title = "Survival Status by Passenger Class and Gender",
       x = "Passenger Class",
       y = "Count",
       fill = "Survived")

# (c) Draw bar plot to show distribution of feature "Age"
histogram_age <- ggplot(titanic_df, aes(x = Age)) +
  geom_bar(binwidth = 5, fill = "skyblue", color = "black", stat = "count") +
  labs(title = "Distribution of Age",
       x = "Age",
       y = "Count")

# Display the plots
print(barplot_class_survived)
print(barplot_class_gender_survived)
print(histogram_age)