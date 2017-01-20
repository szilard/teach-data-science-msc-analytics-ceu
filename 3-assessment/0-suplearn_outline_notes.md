
### Supervised learning 

(strike-out like ~~abc abc abc~~ not needed for exam)

#### Intro

data: **X** (`n` observations/examples, `p` predictors/features), **y** (output/labels) -
regression: `y` numeric, classification: `y` categorical (most often binary)

train: learn/fit `f` from data (model/input-output mapping)

score: for new input `x` predict output `f(x)`

methods/models/algorithms: linear regression (LR), logistic regression (linear classification), k nearest neighbors (KNN), decision trees (DT), random forests (RF), gradient boosted machines (GBM), neural networks (NN), deep learning neural networks (DL), ~~naive Bayes (NB), support vector machines (SVM)~~ etc.


#### Goodness

goal: maximize accuracy/minimize generalization error (on *new* data)

accuracy/error metrics: regression: mean squared error, classification: error, confusion matrix (TP, FP, TN, FN), ROC curve, AUC

*bad:* measure error on train set, *must:* measure error on hold-out/test set or using cross validation (e.g. K-fold) - principle: data used for training can't be used for 
evaluation (would underestimate error)

hyperparameters, model complexity/flexibility/degrees of freedom - as complexity increases, train error decreases, test error U-shape (some optimal value/range)

too complex: overfitting (and in conjunction with measuring error on train set it is the *biggest
mistake* in machine learning)

model selection: grid/random search, select best model using validation set/cross validation, evaluate best model using separate hold-out/test set - principle: data used for training can't be used for model selection, data used for model selection can't be used for model evaluation - general principle: data used for some optimization can't be used for evaluation (would underestimate error)


#### Algos

how the training/algos work: minimize error metric/loss function on the *train set* 
in a given class of functions usually in steps/iterations ("learning")

regularization: add penalty for complexity to the loss function (in order to avoid overfitting)

##### Training:

linear regression: analytical solution or gradient descent

trees: recursive splits on variables based on best loss function/impurity measure 
change (greedy optimization)

bagging: boostrap data, build trees, aggregate

random forest: bagging with random subset of variable at each split)

Adaboost: build successive trees by up-weighting the errors, combine the trees

~~GBM: build successive trees with steepest descent in functional space~~

neural networks: backpropagation (gradient descent) + lots of tricks 
~~(adaptive, momentum etc.)~~

~~SVM: kernel trick, convex optimization~~

KNN: (special case:) no training, computation at scoring time only

##### Complexity params:

- tree: depth
- random forest: ~none
- GBM: \# of trees (+learning rate, depth of trees)
- neural nets: \# layers/neurons/weights
- ~~SVM: 1/cost~~
- KNN: `1/k`
- linear models (if regularized): sum of squared/absolute coeffs

##### Regularization:

- tree: pruning
- random forest: ~auto
- GBM: early stopping
- neural networks: L1, L2, dropout, early stopping
- ~~SVM: ~auto~~
- linear models: L1 (lasso), ~~L2 (ridge)~~


#### Performance:

Most accurate: GBM, RF, NN (DL on images/speach), ~~SVM~~ + ensembles of them <br>
Less accurate: LR, tree, KNN, NB











