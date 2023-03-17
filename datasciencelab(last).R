dataframe<-read.csv(file,header=logical_valure,sep="delimiter")
data<-read.csv("E:/data.csv",header=TRUE,sep=",")
data
s<-data$interest_rate
sd(s)
install.packages("dplyr")
library(dplyr)
data %>% summarise_if(is.numeric,sd)

install.packages("matrixStats")
library(matrixStats)
library(dplyr)
data$score = rowSds(as.matrix(data[,c(2,3)]))
data$score
data
data<- edit(data)
data
colSums(is.na(data))
which(is.na(data$Loan))
which(is.na(data))
remove<-na.omit(data)
remove

