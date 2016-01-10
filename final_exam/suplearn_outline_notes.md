
### Supervised learning 

(strike out like ~~abc abc~~ not needed for exam)

#### Intro

data: **X** (n observations/examples, p predictors/features), **y** (output/labels) -
regression: y numeric, classification: y categorical (most often binary)

train: learn/fit f from data (model/input-output mapping)

score: for new input x predict output f(x)

methods/models/algorithms: linear regression, logistic regression (linear classification), k nearest neighbors, decision trees, random forests, gradient boosted machines (GBM), neural networks, deep learning neural networks, ~~naive Bayes, support vector machines (SVM)~~ etc.


#### Accuracy

goal: maximize accuracy/minimize generalization error (on *new* data)

accuracy/error metrics: regression: mean squared error, classification: error, confusion matrix (TP, FP, TN, FN), ROC curve, AUC

\#1 mistake: measure error on train set, **must:** measure error on hold-out/test set or using cross validation (e.g. K-fold) - principle: data used for training can't be used for 
evaluation (would underestimate error)

hyperparameters, model complexity/flexibility/degrees of freedom - as complexity increases train error decreases, test error U-shape (some optimal value/range)

too complex: overfitting

model selection: grid search, select best model using validation set/cross validation, evaluate best model using separate hold-out/test set - principle: data used for training can't be used for model selection, data used for model selection can't be used for model evaluation - general principle: data used for optimization can't be used for evaluation (would underestimate error)


#### Algos

how the training/algos work: minimize error metric/loss function on the *train set* 
in a given class of functions usually in steps/iterations ("learning")

regularization: add penalty for complexity to the loss function

Training:

linear regression: analytical solution or gradient descent

trees: recursive splits on variables based on best loss/impurity measure 
change (greedy optimization)

bagging: boostrap data, build trees, aggregate

random forest: bagging with random subset of variable at each split)

Adaboost: build successive trees by up-weighting the errors, combine the trees

~~GBM: steepest descent in functional space~~

neural networks: backpropagation (gradient descent) + lots of tricks (adaptive, momentum etc.)

~~SVM: kernel trick, convex optimization~~

knn: (special case:) no training, computation at scoring


Complexity params:

- trees: depth
- random forest: ~NA
- GBM: \# of trees, learning rate, depth of trees
- neural nets: \# layers/neurons/weights
- ~~SVM: 1/cost~~
- knn: 1/k
- ~~linear models (if regularized): sum of squared/absolute coeffs~~


Regularization:

- tree: pruning
- random forest: ~auto
- GBM: early stopping
- neural networks: L1, L2, dropout, early stopping
- ~~SVM: ~auto~~
- ~~linear models: L1 (lasso), L2 (ridge)~~


#### Performance:

Most accurate: GBM, RF, NN (DL on images/speach), SVM + ensembles of them

Less accurate: LR, trees, knn, NB











