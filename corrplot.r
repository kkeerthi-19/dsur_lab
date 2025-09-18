# install.packages("corrplot") # run once if not installed 
library(corrplot) 
 
corrplot(cor_matrix, method = "circle", type = "upper", 
tl.col = "black", tl.cex = 0.8)
