# Load the women dataset
data("women")

# Create a factor based on height
height_factor <- cut(women$height, breaks = c(50, 60, 70, 80), labels = c("Short", "Medium", "Tall"))

# Display the first few rows of the factor
head(height_factor)
