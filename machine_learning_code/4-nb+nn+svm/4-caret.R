
library(caret)
# uniform API to >100 models/algos
# http://topepo.github.io/caret/modelList.html

set.seed(123)

# scaled data machine_learning_code/4-nb+nn+svm/0-scale.R
dim(d_train)
dim(d_test)

# parallel grid search in caret
library(doMC)
parallel::detectCores()
registerDoMC(cores = 4)

system.time({
mds <- train(as.factor(spam) ~ ., data = d_train,
             method = "svmRadial",  # uses package kernlab (not e1071)
             tuneGrid = expand.grid(sigma = 10^(-5:1), C = 10^(-1:5)),
             trControl = trainControl(method = "cv", number = 5))
})

mds
names(mds)

yhat <- predict(mds, newdata = d_test)
sum(yhat!=d_test$spam)/nrow(d_test)

