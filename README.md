
## Data Science Course

This repo contains materials for an introductory/intermediate 
Data Science course taught in the 
[MSc in Business Analytics program](http://business.ceu.edu/msc-in-business-analytics) 
at the Central European University (CEU).

One can teach only a limited amount of material
in a short 2-credit course (1200 minutes/20 hours net) to
students with varying analytical background. As most data science topics except 
machine learning are covered (to some extent) in other courses in the program, 
I decided to spend 70%+ of the available time on *machine learning*. 
Yet, I'm still dedicating the 
rest to an overview of the entire data science landscape with topics such as exploratory data analysis, data visualization, reproducibility, tools for data analysis etc. 
(and discussing how to get details from the other courses).

My views on what a full data science curriculum 
should be are briefly expressed in the "Course focus and description" section below
and a bit further in [this post](https://github.com/szilard/datascience-course-historical).

The course is also a bit handicapped by the reality that I can come to Budapest only for a 
limited amount of time and therefore the classes had to be condensed in a 2-week period.
Spreading the classes over more time would allow weekly homework assignements and 
required reading (papers) and also more interaction with the students.


-------------------------------------------------------------

## Syllabus

#### CEU MSc in Business Analytics 

#### Course: Data Science for Business

- **Term:** Winter 2016-2017
- **Credits:** 2 (4 ECTS) 
- **Department:** Department of Economics / CEU Business School
- **Instructor:** Szilard Pafka


#### Course focus and description:

This course will provide a brief overview of Data Science, the field aimed at extracting business value from data. Despite the new name and the recent hype, Data Science is actually not new, it has solid foundations in *statistics* and *computing technology* that go back several decades. A Data Science project usually involves several iterations of the following steps: business understanding, data acquisition, exploratory data analysis, data cleaning, feature engineering, advanced statistical modeling, model validation, technical implementation and deployment and communication of results to decision makers. This course will discuss these steps - some of them in very details, while some others with pointers to other courses in the MSc in Business Analytics program for further coverage.

A large part of this current course will be dedicated to advanced statistical modeling / *machine learning* / predictive analytics. We will discuss methods for supervised learning such as neural networks, decision trees, naive Bayes, k-nearest neighbors, support vector machines, random forests or gradient boosted machines. We will discuss important issues regarding model evaluation and validation (bias and variance, overfitting, training and test error, regularization, cross-validation, data leakage etc.). We will also cover methods for unsupervised learning such as principal component analysis and clustering (k-means, hierarchical).

Other topics, equally important for Data Science will be just briefly discussed here with more details following in other courses. For example, students will get hands-on experience with *exploratory data analysis*, *data manipulation/preparation* and cleaning, *data visualization*, *programming* with data and tools that help *reproducibility* in the Tools for Analytics Lab (the R Track). Data storage, databases, data transformations (data pipelines/ETL) and SQL will be discussed in The Big Data Computing course (also providing a *systems* view). *Data visualization* (a very important component in exploratory data analysis and also in the communication of results to decision makers) will be discussed in further details in the Data Visualization elective course (highly recommended). Some of the more traditional *statistical modeling* topics (such as linear regression) have been already covered in the Data Analysis I and II courses.


#### Assessment:

- 10% class participation
- 50% final exam
- 40% data analysis project


#### Course schedule and materials for each session:

**1.** [DS] **The Data Science process**: business understanding, data acquisition, exploratory data analysis, data cleaning, feature engineering, advanced statistical modeling, model validation, technical implementation and deployment, communication of results to decision makers.

[Slides](https://docs.google.com/presentation/d/1aPymN2aJlqLigLin_IaEPAee0V17EPkfvvyPLq9X6dA/edit?usp=sharing)

Optional reading: Foster Provost, Tom Fawcett: [Data Science for Business](http://www.amazon.com/Data-Science-Business-data-analytic-thinking/dp/1449361323), Ch. 2 (pp. 26-41)


**2.** [DS] Tools for Data Science (R/Python, databases). Exploratory data analysis. Data preparation/munging. Data visualization. Tools for workflow/reproducibility/productivity

[Slides](https://docs.google.com/presentation/d/1rsoJRnLjKojbpc-nb9y-t-0410rBDLIb_2oTL4pSH7M/edit?usp=sharing)

Optional reading: Sean Kandel, Andreas Paepcke, Joseph M. Hellerstein, and Jeffrey Heer: 
[Enterprise Data Analysis and Visualization: An Interview Study](http://db.cs.berkeley.edu/papers/vast12-interview.pdf) (pp. 1-10)


**3.** [ML] **Supervised learning**. Introduction to supervised learning. Linear models vs k-nearest neighbors 

Trevor Hastie, Robert Tibshirani, Jerome Friedman: [The Elements of Statistical Learning (2nd Edition)](http://statweb.stanford.edu/~tibs/ElemStatLearn/printings/ESLII_print10.pdf), Ch. 2 (pp. 9-17, 28-29)


**4.** [ML] Decision trees. Random forests. GBM

Trevor Hastie, Robert Tibshirani, Jerome Friedman: [The Elements of Statistical Learning (2nd Edition)](http://statweb.stanford.edu/~tibs/ElemStatLearn/printings/ESLII_print10.pdf), Ch. 9 (pp. 305-309), Ch. 15 (pp. 587-592), Ch. 10 (pp. 337-340)

[Demo code](1-machine_learning_code/2-trees+ensembles/)


**5. & 6.** [ML] Model evaluation and selection: training and test error, overfitting, cross-validation, regularization, ROC curve. Comparison of various supervised learning methods (accuracy)

Trevor Hastie, Robert Tibshirani, Jerome Friedman: [The Elements of Statistical Learning (2nd Edition)](http://statweb.stanford.edu/~tibs/ElemStatLearn/printings/ESLII_print10.pdf), Ch. 7 (pp. 219-222, 241-242), Ch. 10 (p. 351)

[Demo code](1-machine_learning_code/3-model_eval)

Optional reading: Rich Caruana, Alexandru Niculescu-Mizil: [An Empirical Comparison of Supervised Learning Algorithms](https://www.cs.cornell.edu/~caruana/ctp/ct.papers/caruana.icml06.pdf) (pp. 1-8)


**7.** [ML] Neural networks. Deep Learning

Trevor Hastie, Robert Tibshirani, Jerome Friedman: [The Elements of Statistical Learning (2nd Edition)](http://statweb.stanford.edu/~tibs/ElemStatLearn/printings/ESLII_print10.pdf), Ch. 11 (pp. 392-400, 404-408)

[Demo code](1-machine_learning_code/4-nb+nn+svm)


**8.** [DS/ML] An example **data analysis project**

[Demo code](2-ds_project_example)


**9.** [ML] **Unsupervised learning**. Clustering (k-means, hierarchical)

Trevor Hastie, Robert Tibshirani, Jerome Friedman: [The Elements of Statistical Learning (2nd Edition)](http://statweb.stanford.edu/~tibs/ElemStatLearn/printings/ESLII_print10.pdf), Ch. 14 (pp. 485-486, 502-503, 507-511, 520-524)

[Demo code](1-machine_learning_code/5-unsup)


**10.** [DS/ML] Recap/Q&A Final exam and Homework project

Optional reading: David Donoho: [50 years of Data Science](https://dl.dropboxusercontent.com/u/23421017/50YearsDataScience.pdf)

-------------------------------------------------------------

## Exam+Project

Materials for the final exam/data analysis project:

- [Some notes on supervised learning](3-assessment/0-suplearn_outline_notes.md)
- [Sample exam questions](3-assessment/1-sample_exam_questions.md)
- [Requirements for the data analysis project](3-assessment/2-homework_data_analysis_project.md)

-------------------------------------------------------------

## Materials from previous academic years

#### Sample projects from students:

- Laszlo Sallo: [insurance risk prediction](https://github.com/szilard/student-data-science-project-1-kaggle) also in Kaggle competition (finished top 10%, congratulations!) 
- Oliver Kocsis: [classification of body postures](https://cdn.rawgit.com/szilard/student-data-science-project-2/master/dataset-har-PUC-Rio-ugulino.html)
- Benedek Rozemberczki: [used car quality prediction](https://cdn.rawgit.com/szilard/student-data-science-project-3/master/Project_Cleaning_HTML_Rozemberczki.html)


#### Student feedback:

- "Thank you for teaching this course, it was one of the most useful and inspirational ones in our program"
- "I'll mention this course if someone asks what's a good course like"
- "One of the most interesting and informative courses so far [in this program]"


