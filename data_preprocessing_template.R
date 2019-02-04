# Data processing
dataset = read.csv('Data.csv')
# dataset = dataset[, 2:3]

############################################### our template

# Splitting the Data set into the Training and Test set
# install.packages('caTools')
library(caTools)
set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio = 0.8) # ratio between the set of observations that goes to the training set
# the rest goes to the test set
training_Set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE) # creating the training_Set and test_set separately

# Feature Scaling
# training_Set[, 2:3] = scale(training_Set[, 2:3])
# test_set[, 2:3] = scale(test_set[, 2:3])
  



  







