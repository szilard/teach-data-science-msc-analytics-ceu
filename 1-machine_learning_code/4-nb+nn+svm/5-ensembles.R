
library(caretEnsemble)
set.seed(123)

library(doMC)
registerDoMC(cores = parallel::detectCores())

# can't deal with "0"/"1" (~bug)
d_train_ynames <- d_train
d_train_ynames$spam <- ifelse(d_train_ynames$spam=="1","y1","y0")

system.time({
  mds <- caretList(spam ~ ., data = d_train_ynames,
            tuneList = list(
                rf  = caretModelSpec(method = "rf", tuneLength = 10),
                gbm = caretModelSpec(method = "gbm", tuneLength = 10),
                svm = caretModelSpec(method = "svmRadial", tuneLength = 10)
            ),
            trControl = trainControl(method = "cv", number = 5,
                          classProbs = TRUE, savePredictions = TRUE))
})

mds

phat <- predict(mds, newdata = d_test)
head(phat)
cor(phat)


# model averaging
phat <- rowMeans(phat)
head(phat)
sum(ifelse(phat>0.5,1,0)!=d_test$spam)/nrow(d_test)


# model stacking
md <- caretStack(mds, method = "glm")
summary(md)

phat <- predict(md, newdata = d_test, type="prob")$y1
head(phat)
sum(ifelse(phat>0.5,1,0)!=d_test$spam)/nrow(d_test)

