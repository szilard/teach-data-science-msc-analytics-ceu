
# read data, split train/test machine_learning_code/2-trees+ensembles/0-data.R
dim(d_train)
dim(d_test)

table(sapply(d, class))
table(sapply(d, min))
sort(sapply(d, max))
log10(sapply(d, max))

# scaling
p <- ncol(d_train)-1
for (k in 1:p) {
  d_train[[k]] <- log10(1+d_train[[k]])
  d_test[[k]] <- log10(1+d_test[[k]])
}  

