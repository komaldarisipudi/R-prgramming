
fibonacci <- function(n) {
  if (n <= 0) {
    return(NULL)
  } else if (n == 1) {
    return(0)
  } else if (n == 2) {
    return(1)
  } else {
    fib_sequence <- numeric(n)
    fib_sequence[1] <- 0
    fib_sequence[2] <- 1
    for (i in 3:n) {
      fib_sequence[i] <- fib_sequence[i - 1] + fib_sequence[i - 2]
    }
    return(fib_sequence)
  }
}

n <- 10
fib_numbers <- fibonacci(n)


cat("First", n, "Fibonacci numbers:", fib_numbers, "\n")