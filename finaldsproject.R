#Installing necessary packeages
install.packages("stats")
install.packages("dplyr")
install.packages("factoextra")
install.packages("ggfortify")
install.packages("NbClust")

library(stats)
library(dplyr)
library(factoextra)
library(ggfortify)
library(NbClust)


#Importing Dataset
mydata <- read.csv ("E:/Mall_Customers.csv")
mydata
str(mydata)
head(mydata)
summary(mydata)

#selecting necessary attributes
customer_data_cluster <- customer_data %>%
  select(Age, Annual.Income..k.., Spending.Score..1.100.)

customer_data_cluster


# Scaling the data
customer_data_scale <- scale(customer_data_cluster)
customer_data_scale
#Distance
customer_dist_data <- dist(customer_data_scale)
customer_dist_data


#pie chart of gender
install.packages("plotrix")
a= table(mydata$Gender)
pct= round(a/sum(a)*100)
lbs= paste(c("Female" , "Male") , " " ,pct, "%" , sep = " ")
library(plotrix)
pie3D(a , labels = lbs,
      main = "Pie chart depicting ratios of gender")

#Age plotting
hist(mydata$Age,
     col="purple",
     main="Histogram for value counts of Age",
     xlab="Age",
     ylab="Frequency",
     labels=TRUE)


#Salary plotting
hist(mydata$Annual.Income..k..,
     col="blue",
     main="Income of customers",
     xlab="Income",
     ylab="Count",
     labels=TRUE)

#spending score plotting
summary(mydata$Spending.Score..1.100.)


boxplot(mydata$Spending.Score..1.100.,
        horizontal = TRUE ,
        col = "#990000",
        main = "Descriptive analysis for spending score"
        )


#calculating the value of k
fviz_nbclust(mydata_scale, kmeans, method = "wss")+
  labs(subtitle="Elbow Method")

#Applying K-means algorithm
cdf <- data.frame(mydata$Age , mydata$Annual.Income..k.., mydata$Spending.Score..1.100.)
head(cdf)



#using the gap statistics method.
library(cluster)
set.seed(125)
stat_gap <- clusGap(cdf, FUN = kmeans, nstart = 25,
                    K.max = 10, B = 50)


#Dividing into 6 clusters
k6<-kmeans(cdf,6,iter.max=100,nstart=50,algorithm="Lloyd")
k6

#principal component analysis
pcclust=prcomp(cdf,scale=FALSE) 
summary(pcclust)
pcclust$rotation[,1:2]

#Cluster plotting
options(repr.plot.width = 12, repr.plot.height = 10)
clusplot(cdf, k6$cluster, color=TRUE, shade=TRUE, labels=0,lines=0)




#Scatter plotting of clusters
library("ggplot2")
set.seed(1)
options(repr.plot.width = 12, repr.plot.height =8)
ggplot(cdf, aes(x = mydata.Age, y = mydata$Spending.Score..1.100.)) + 
  geom_point(stat = "identity", aes(color = as.factor(k6$cluster))) +
  scale_color_discrete(name=" ",
                       breaks=c("1", "2", "3", "4", "5","6"),
                       labels=c("Cluster 1", "Cluster 2", "Cluster 3", "Cluster 4", "Cluster 5","Cluster 6")) +
  ggtitle("Segments of Customers", subtitle = "Using K-means Clustering")

#Final visualization
kcols = function(vec){ cols = rainbow(length(unique(vec)))
return(cols[as.numeric(as.factor(vec))])
}

digCluster<- k6$cluster; dignm <- as.character(digCluster); #k-means cluster

plot(pcclust$x[,1:2], col = kcols(digCluster) , pch = 19 , xlab = "K-Means" , ylab = "Classes")
legend("bottomleft" , unique(dignm) , fill = unique(kcols(digCluster)))


























































