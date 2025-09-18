# Writing a sample .txt file 
write.table(iris[1:5, ], file = "sample.txt", sep = "\t", row.names = FALSE) 
 
# Reading .txt file 
txt_data <- read.table("sample.txt", header = TRUE, sep = "\t") 
print(txt_data) 

# Writing a sample .csv file 
write.csv(iris[1:5, ], file = "sample.csv", row.names = FALSE) 
 
# Reading .csv file 
csv_data <- read.csv("sample.csv") 
print(csv_data) 

