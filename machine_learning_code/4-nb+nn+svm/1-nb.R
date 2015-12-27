
library(e1071)
set.seed(123)

# scaled data machine_learning_code/4-nb+nn+svm/0-scale.R
dim(d_train)
dim(d_test)

md <- naiveBayes(as.factor(spam) ~ ., data = d_train)

yhat <- predict(md, newdata = d_test)
sum(yhat!=d_test$spam)/nrow(d_test)
#phat <- predict(md, newdata = d_test, type="raw")[,"1"]
#sum(ifelse(phat>0.5,1,0)!=d_test$spam)/nrow(d_test)

