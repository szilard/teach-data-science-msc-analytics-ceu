
### Supervised learning 

data: **X** (n observations/examples, p predictors/features), **y** (output/labels) -
regression: y numeric, classification: y categorical (most often binary)

train: learn/fit f from data (model/input-output mapping)

score: for new input x predict output f(x)

methods/models/algorithms: linear regression, logistic regression (linear classification), k nearest neighbors, decision trees, random forests, gradient boosted machines (GBM), neural networks, deep learning neural networks, ~~naive Bayes, support vector machines (SVM)~~ etc.

goal: maximize accuracy/minimize generalization error (on *new* data)

accuracy/error metrics: regression: mean squared error, classification: error, confusion matrix (TP, FP, TN, FN), ROC curve, AUC

\#1 mistake: measure error on train set, must: measure error on hold-out/test set or using cross validation (e.g. K fold, K=5)

hyperparameters, model complexity/flexibility/degrees of freedom - as complexity increases train error decreases, test error U-shape (some optimal value/range)

too complex: overfitting

model selection: grid search, select best model using validation set/cross validation, evaluate best model using separate hold-out/test set

how the algos work: minimize error metric/loss function on the *train set* in class of
functions usually in steps/iterations ("learning")


