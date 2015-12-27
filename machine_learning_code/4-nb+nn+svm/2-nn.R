
library(nnet)
set.seed(123)

# scaled data machine_learning_code/4-nb+nn+svm/0-scale.R
dim(d_train)
dim(d_test)

md <- nnet(as.factor(spam) ~ ., data = d_train, 
           size = 10, decay = 0.1,
           maxit = 1000, MaxNWts = 1000)

phat <- predict(md, newdata = d_test)
sum(ifelse(phat>0.5,1,0)!=d_test$spam)/nrow(d_test)

# quick experimentation with size, decay, maxit...
# can do more extensive tuning e.g. with caret
# careful with small sample sizes (stddev of error e.g. CV)


