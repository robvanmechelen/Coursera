runif(5)
x = runif(10,1,10)
x
x = list(a=1:5, b=runif(5,1,10))
x
lapply(x, mean)
air1999 = read.csv("daily_88101_1999.csv", header = TRUE, sep = ",")
colnames(air1999)
install.packages("KernSmooth")
library(KernSmooth)
