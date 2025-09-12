data(iris)
head(iris)
ancova_model <- aov(Sepal.Length ~ Species + Petal.Length, data=iris)
summary(ancova_model)
