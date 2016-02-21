
# read data, split train/test 1-machine_learning_code/2-trees+ensembles/0-data.R
dim(d_train)
dim(d_test)

p <- ncol(d_train)-1
table(sapply(d[,1:p], class))
table(sapply(d[,1:p], min))
sort(sapply(d[,1:p], max))
log10(sapply(d[,1:p], max))

# scaling
for (k in 1:p) {
  d_train[[k]] <- log10(1+d_train[[k]])
  d_test[[k]] <- log10(1+d_test[[k]])
}  

