data <- c(10, 12, 13, 15, 16, 18, 19,33,3,36,63,99,32,15,6, 20, 22, 100, 105) 
# Create a boxplot 
boxplot(data, main = "Boxplot to Identify Outliers", ylab = "Values") 
# Optional: print outliers detected by boxplot.stats 
outliers <- boxplot.stats(data)$out 
print(paste("Outliers:", paste(outliers, collapse = ", "))) 

