
library(e1071)
set.seed(123)

# scaled data machine_learning_code/4-nb+nn+svm/0-scale.R
dim(d_train)
dim(d_test)

md <- svm(as.factor(spam) ~ ., data = d_train,
          kernel = "radial", gamma = 1/p, cost = 1)

yhat <- predict(md, newdata = d_test)
sum(yhat!=d_test$spam)/nrow(d_test)


# grid search
system.time({
mds <- tune.svm(as.factor(spam) ~ ., data = d_train,
                gamma = 10^(-5:1), cost = 10^(-1:5), 
                tunecontrol = tune.control(cross = 5))
})

mds
summary(mds)
names(mds)
round(xtabs(error ~ gamma + cost, mds$performances)*100,2)
class(mds$best.model)
class(mds)

yhat <- predict(mds$best.model, newdata = d_test)
sum(yhat!=d_test$spam)/nrow(d_test)


