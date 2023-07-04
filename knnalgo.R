mydata <- read.csv ("E:/iris.csv")
mydata
str(mydata)

normali<-function(x){x-min(x)/(max(x)-min(x))}
iris_norm<-as.data.frame(lapply(iris[,c(1,2,3,4)], normali))
iris_norm
summary(iris_norm)


random <- sample(1:nrow(iris_norm), 0.7*nrow(iris_norm)) 
iris_train <- iris_norm[random,]
iris_test <- iris_norm [-random,]
iris_train_labels <- mydata[random , 5]
iris_test_labels <- mydata[-random , 5]
iris_train_labels
iris_test_labels
random

install.packages("class")
library(class)
ml <- knn(iris_train,iris_test ,cl =iris_train_labels,k = 13)
ml
tab <- table(ml , iris_test_labels)
tab
