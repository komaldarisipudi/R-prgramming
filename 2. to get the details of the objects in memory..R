x <- 1:100
y <- matrix(1:200, ncol = 2)
z <- "Hello, world!"

# List all objects in memory
objects <- ls()

# Print the details of each object
for (obj in objects) {
  size <- object.size(get(obj))
  cat("Object:", obj, "\n")
  cat("Size:", size, "bytes\n")
  cat("-----------------------\n")
}

# Clean up the example objects (optional)
rm(x, y, z)