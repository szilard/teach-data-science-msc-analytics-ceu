
library(rpart)
set.seed(123)

# read data, split train/test machine_learning_code/2-trees+ensembles/0-data.R
dim(d_train)
dim(d_test)

md <- rpart(as.factor(spam) ~ ., data = d_train)
md
plot(md, uniform = TRUE, compress = TRUE)
text(md, use.n = TRUE, cex = 0.7)

phat <- predict(md, d_test)[,"1"]
table(ifelse(phat>0.5,1,0), d_test$spam)

args(rpart.control)
md <- rpart(as.factor(spam) ~ ., data = d_train, control = rpart.control(cp = 0))
plot(md, uniform = TRUE, compress = TRUE)
printcp(md)
plotcp(md)
prune(md, cp = 0.01)
prune(md, cp = 0.0014995)   # min
prune(md, cp = 0.0051546)   # min+1se

args(rpart.control)
md <- rpart(as.factor(spam) ~ ., data = d_train, control = rpart.control(maxdepth = 2))
plot(md, uniform = TRUE, compress = TRUE)
text(md, use.n = TRUE, cex = 0.7)


