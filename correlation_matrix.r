# Take only numeric columns from iris 
num_data <- iris[, 1:4] 
 
# Correlation matrix 
cor_matrix <- cor(num_data) 
print(cor_matrix) 
