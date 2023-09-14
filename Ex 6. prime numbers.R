sieve_of_eratosthenes <- function(n) {
  primes <- rep(TRUE, n+1)
  primes[1] <- FALSE  # 1 is not a prime
  
  for (i in 2:sqrt(n)) {
    if (primes[i]) {
      for (j in i^2:n) {
        if (j %% i == 0) {
          primes[j] <- FALSE
        }
      }
    }
  }
  prime<-which(primes)
  return(prime)
  
  
}

max_number<-50
prime_numbers<-sieve_of_eratosthenes(max_number)


cat("Prime numbers up to", max_number, ":", prime_numbers, "\n")