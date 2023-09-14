matrix_rows <- matrix(1:20, nrow = 5, ncol = 4, byrow = TRUE)
rownames(matrix_rows) <- c("Row1", "Row2", "Row3", "Row4", "Row5")
colnames(matrix_rows) <- c("Col1", "Col2", "Col3", "Col4")

# Create a 3 x 3 matrix with labels and fill by rows
matrix_3x3 <- matrix(c(10, 20, 30, 40, 50, 60, 70, 80, 90), nrow = 3)
rownames(matrix_3x3) <- c("R1", "R2", "R3")
colnames(matrix_3x3) <- c("C1", "C2", "C3")

# Create a 2 x 2 matrix with labels and fill by columns
matrix_2x2 <- matrix(c("A", "B", "C", "D"), nrow = 2, byrow = FALSE)
rownames(matrix_2x2) <- c("R1", "R2")
colnames(matrix_2x2) <- c("C1", "C2")

# Display the matrices
cat("5 x 4 Matrix filled by rows:\n")
print(matrix_rows)
cat("\n")

cat("3 x 3 Matrix with labels and filled by rows:\n")
print(matrix_3x3)
cat("\n")

cat("2 x 2 Matrix with labels and filled by columns:\n")
print(matrix_2x2)