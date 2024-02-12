set.seed(123) # Set a seed for reproducibility

# Function to generate a string with a sequence of three numbers beginning with 0
generate_number_sequence <- function() {
  paste0('0', sprintf('%02d', sample(0:99, 1)))
}

# Initialize the matrix
random_matrix <- matrix("", nrow = 13, ncol = 60)

# Fill the matrix with the random sequences
for (row in 1:nrow(random_matrix)) {
  for (col in 1:ncol(random_matrix)) {
    random_matrix[row, col] <- generate_number_sequence()
  }
}

# Print the matrix
print(random_matrix)

# Save the matrix to a csv file
write.csv(random_matrix, "random_matrix.csv", row.names = FALSE)

# do a correlation analysis
cor(random_matrix)

#it says x must be numeric

