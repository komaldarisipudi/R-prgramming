v <- c(1, 2, 3, 4, 5)
m <- matrix(letters[1:9], nrow = 3, ncol = 3)
f <- function(x, y) {
  return(x + y)
}
l <- list(v, m, f)
print(l)