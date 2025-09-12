boxplot(mpg ~ cyl, data = mtcars,
        main = "Boxplot of MPG by Cylinders",
        xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon (MPG)",
        col = c("lightblue", "lightgreen", "lightpink"))

plot(mtcars$hp, mtcars$mpg,
     main = "Horsepower vs MPG",
     xlab = "Horsepower (hp)",
     ylab = "Miles Per Gallon (MPG)",
     pch = 19, col = "blue")

model <- lm(mpg ~ hp, data = mtcars)
abline(model, col = "red", lwd = 2)

par(mfrow = c(1, 1))
