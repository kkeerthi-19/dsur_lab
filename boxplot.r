#box plot 
library(ggplot2) 
ggplot(data = iris, aes(x = Species, y = Sepal.Length)) + 
geom_boxplot() + 
labs(title = "Sepal Length Distribution by Species", 
x = "Species", 
y = "Sepal Length") 
