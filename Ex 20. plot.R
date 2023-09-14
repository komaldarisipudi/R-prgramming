x <- c(1, 5)
y <- c(0, 10)

# Adjust figure margins with smaller values
par(mar = c(2, 2, 2, 2) + 0.1)

# Create an empty plot with specified axes limits
plot(x = x, y = y, type = "n", xlim = x, ylim = y, xlab = "X Axis", ylab = "Y Axis", main = "Empty Plot with Axes Limits")

# Reset figure margins to default
par(mar = c(5, 4, 4, 2))