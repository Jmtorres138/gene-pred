library(methods)
library(glmnet)

args <- commandArgs(trailingOnly = TRUE)

f <- args[1]

t <- read.table(f,header=T)
t1 <- scale(t[,1])
t2 <- scale(t[,2:ncol(t)])
g <- cv.glmnet(as.matrix(t2),t1,alpha=.1)
coef(g)
