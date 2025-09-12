library(corrplot)
cor_mat <- cor(iris[, 1:4])
corrplot(cor_mat, method = "circle", type = "upper", addCoef.col = "black")
