
Supervised learning 
===================


data: **X** (n observations/examples x p predictors/features), **y** (output/labels) --
regression: y numeric, classification: y categorical (most often binary)

train: learn/fit f from data (model/input-output mapping)

score: for new input x predict output f(x)

models/algorithms: linear regression, logistic regression (linear classification), k nearest neighbors, decision trees, random forests, gradient boosted machines (GBM), neural networks, deep learning neural networks, ~~naive Bayes, support vector machines (SVM)~~ etc.

goal: maximize accuracy/minimize generalization error (error on _new_ data)

accuracy/error metrics: regression: mean squared error, classification: error, confusion matrix (TP, FP, TN, FN), ROC curve, AUC

bad: measure error on train set, must: measure error on hold-out/test set or using cros validation (e.g. K fold, K=5)

hyperparameters, model complexity/flexibility/degrees of freedom -- as complexity increases train error decreases, test error U-shape (some optimal value/range)

too complex: overfitting



