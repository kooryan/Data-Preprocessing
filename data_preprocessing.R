# Data processing
dataset = read.csv('Data.csv')

# Taking care of missing data
dataset$Age = ifelse(is.na(dataset$Age), 
                     ave(dataset$Age, FUN = function(x) mean(x, na.rm = TRUE)), 
                     dataset$Age) 
# first parameter, tells if the value of any in the column $Age is NA or not, if it is returns true
#na.rm means that we are asking R to include the missing values when R will go through the whole column Age to calc the mean value
# to recape, first parameter is condition
# second parameter is the execution when condition is true
# third parameter is the execution when the condition is false (or the value returned)
dataset$Salary = ifelse(is.na(dataset$Salary), 
                     ave(dataset$Salary, FUN = function(x) mean(x, na.rm = TRUE)), 
                     dataset$Salary) 

# Encoding categorical data
dataset$Country = factor(dataset$Country,
                         levels = c('France', 'Spain', 'Germany'),
                         labels = c(1,2,3)) # here we are creating a vector of three elements: France, Spain, Germany
dataset$Purchased = factor(dataset$Purchased,
                           levels = c('No', 'Yes'),
                           labels = c(0, 1)) 

