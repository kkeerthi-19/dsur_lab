# scatter plot 
library(ggplot2) 
ggplot(data = iris, aes(x = Petal.Length, y = Petal.Width)) + 
geom_point(aes(color = Species)) + 
labs(title = "Petal Length vs. Petal Width by Species", 
x = "Petal Length", 
y = "Petal Width")

