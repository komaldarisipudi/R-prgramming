find_factors <- function(number) {
  factors <- c()
  
  for (i in 1:number) {
    if (number %% i == 0) {
      factors <- c(factors, i)
    }
  }
  
  return(factors)
}
number <- as.integer(readline(prompt = "Enter a number: "))
factors <- find_factors(number)
cat("Factors of", number, ":", factors, "\n")