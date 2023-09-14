# Function to get unique elements of a string
get_unique_chars <- function(input_string) {
  char_vector <- unlist(strsplit(input_string, ""))
  unique_chars <- unique(char_vector)
  return(unique_chars)
}

# Function to get unique numbers from a vector
get_unique_numbers <- function(input_vector) {
  unique_numbers <- unique(input_vector)
  return(unique_numbers)
}

# Example usage
input_string <- "hello world"
unique_chars <- get_unique_chars(input_string)
print("Unique characters:")
print(unique_chars)

input_vector <- c(3, 5, 7, 3, 9, 5, 7, 2)
unique_numbers <- get_unique_numbers(input_vector)
print("Unique numbers:")
print(unique_numbers)