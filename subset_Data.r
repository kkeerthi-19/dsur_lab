subset_data <- subset(iris, Sepal.Length > 5) 
head(subset_data) 

# Subset selecting only specific columns 
subset_cols <- subset(iris, select = c(Sepal.Length, Species)) 
head(subset_cols)

# Subset with condition and selected columns 
subset_cond <- subset(iris, Species == "setosa", select = c(Sepal.Length, Sepal.Width)) 
head(subset_cond) 

