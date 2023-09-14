# Create a factor from a random sample of LETTERS
set.seed(123)  # For reproducibility
sampled_letters <- sample(LETTERS, size = 100, replace = TRUE)
letter_factor <- factor(sampled_letters)

# Extract five levels from the factor
five_levels <- unique(letter_factor)[1:5]

# Display the extracted levels
print(five_levels)