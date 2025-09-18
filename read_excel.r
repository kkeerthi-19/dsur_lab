# Install package if not already installed 
# install.packages("readxl") 
 
library(readxl) 
 
# Assume an Excel file named "sample.xlsx" with iris data 
# For demo, we first create one: 
# (Requires openxlsx package to write) 
# install.packages("openxlsx") 
library(openxlsx) 
write.xlsx(iris[1:5, ], "sample.xlsx") 
 
# Read the Excel file 
excel_data <- read_excel("sample.xlsx")
print(excel_data) 
