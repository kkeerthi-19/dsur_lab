library(ggplot2)

data(iris)

find_outliers_iqr <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR <- Q3 - Q1
  lower_bound <- Q1 - 1.5 * IQR
  upper_bound <- Q3 + 1.5 * IQR
  return(x < lower_bound | x > upper_bound)
}
num_cols <- sapply(iris, is.numeric)

for (col_name in names(iris)[num_cols]) {
  iris$outlier_flag <- find_outliers_iqr(iris[[col_name]])
  p <- ggplot(iris, aes_string(x = "Species", y = col_name)) +
    geom_boxplot() +
    geom_point(data = subset(iris, outlier_flag), aes_string(x = "Species", y = col_name),
               color = "red", size = 3) +
    ggtitle(paste("Boxplot of", col_name, "by Species with Outliers Highlighted")) +
    theme_minimal()
  
  print(p)
}

