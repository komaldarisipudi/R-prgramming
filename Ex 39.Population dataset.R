# Load the USArrests dataset
data("USArrests")

# (i) (a) Explore the summary of the dataset
summary_data <- summary(USArrests)
print(summary_data)

# (i) (b) Print the state which saw the largest total number of rape
state_max_rape <- rownames(USArrests)[which.max(USArrests$Rape)]
print(paste("State with the largest total number of rape:", state_max_rape))

# (i) (c) Print the states with max & min crime rates for murder
state_max_murder <- rownames(USArrests)[which.max(USArrests$Murder)]
state_min_murder <- rownames(USArrests)[which.min(USArrests$Murder)]
print(paste("State with the highest crime rate for murder:", state_max_murder))
print(paste("State with the lowest crime rate for murder:", state_min_murder))

# (ii) (a) Find the correlation among the features
correlation_matrix <- cor(USArrests)
print(correlation_matrix)

# (ii) (b) Print the states which have assault arrests more than median of the country
median_assault <- median(USArrests$Assault)
states_above_median_assault <- rownames(USArrests)[USArrests$Assault > median_assault]
print(paste("States with assault arrests more than median:", states_above_median_assault))

# (ii) (c) Print the states in the bottom 25% of murder
bottom_25_murder <- quantile(USArrests$Murder, probs = 0.25)
states_bottom_25_murder <- rownames(USArrests)[USArrests$Murder < bottom_25_murder]
print(paste("States in the bottom 25% of murder:", states_bottom_25_murder))

# (iii) (a) Create a histogram and density plot of murder arrests
hist_density_murder <- ggplot(USArrests, aes(x = Murder)) +
  geom_histogram(binwidth = 2, fill = "skyblue", color = "black") +
  geom_density(aes(y = ..scaled..), fill = "red", alpha = 0.3) +
  labs(title = "Histogram and Density Plot of Murder Arrests",
       x = "Murder Arrests",
       y = "Density")

# (iii) (b) Create a scatter plot with assault and murder arrests
scatter_plot <- ggplot(USArrests, aes(x = Murder, y = UrbanPop, color = Assault)) +
  geom_point() +
  labs(title = "Relationship between Murder Arrest Rate, Urban Population, and Assault Arrest Rate",
       x = "Murder Arrests",
       y = "Urban Population",
       color = "Assault Arrests")

# (iii) (c) Create a bar graph to show the murder rate for each state
barplot_murder_rate <- ggplot(USArrests, aes(x = reorder(rownames(USArrests), -Murder), y = Murder)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  coord_flip() +
  labs(title = "Murder Rate by State",
       x = "State",
       y = "Murder Rate")

# Display the plots
print(hist_density_murder)
print(scatter_plot)
print(barplot_murder_rate)