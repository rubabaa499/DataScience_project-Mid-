#omitting data

datascience_mid <- read.csv("E:/Dataset_midterm.csv", header = TRUE, sep = ",") # importing dataset
datascience_mid

summary(datascience_mid)
str(datascience_mid) #display contents of attributes in a list

attributes <- names(datascience_mid)

dataType <- c(typeof(datascience_mid$id), typeof(datascience_mid$Age), typeof(datascience_mid$weight.kg.),
              typeof(datascience_mid$Delivery_number), typeof(datascience_mid$Delivery_time), 
              typeof(datascience_mid$Blood), typeof(datascience_mid$Heart), typeof(datascience_mid$Caesarian))


data.frame(attributes, dataType) 
sum(duplicated(datascience_mid))
colSums(is.na(datascience_mid)) #how many instances are missing
datascience_mid$Blood[datascience_mid$Blood == ""] <- NA #datatype different
colSums(is.na(datascience_mid))
dataset_mid <- na.omit(datascience_mid) #removing null 
colSums(is.na(dataset_mid))

summary(dataset_mid)
str(dataset_mid)

#missing value
#measure of center mean
data.frame(attributes, dataType)
mean_age <- mean(dataset_mid$Age)
mean_weight <- mean(dataset_mid$weight.kg.)
mean_DeliveryNo <- mean(dataset_mid$Delivery_number)
mean_DeliveryTime <- mean(dataset_mid$Delivery_time)
mean_heart_Disease <- mean(dataset_mid$Heart)
mean_Caesarian <- mean(dataset_mid$Caesarian)
Measure_center_mean <- data.frame(mean_age, mean_weight, mean_DeliveryNo, mean_DeliveryTime,
                                     mean_heart_Disease, mean_Caesarian)
Measure_center_mean

#measure of center median
median_age <- median(dataset_mid$Age)
median_weight <- median(dataset_mid$weight.kg.)
median_DeliveryNo <- median(dataset_mid$Delivery_number)
median_DeliveryTime <- median(dataset_mid$Delivery_time)
median_heart_Disease <- median(dataset_mid$Heart)
median_Caesarian <- median(dataset_mid$Caesarian)

Measure_center_median <- data.frame(median_age, median_weight, median_DeliveryNo, median_DeliveryTime, 
                                       median_heart_Disease, median_Caesarian)
Measure_center_median

#Measure of center Mode
mode_age <- names(sort(-table(dataset_mid$Age))) [1]
mode_weight <- names(sort(-table(dataset_mid$weight.kg.))) [1]
mode_DeliveryTime <- names(sort(-table(dataset_mid$Delivery_number))) [1]
mode_DeliveryNo <- names(sort(-table(dataset_mid$Delivery_number))) [1]
mode_BP <- names(sort(-table(dataset_mid$Blood))) [1]
mode_Heart_Disease <- names(sort(-table(dataset_mid$Heart))) [1]
mode_caesarian <- names(sort(-table(dataset_mid$Caesarian))) [1]
Measure_of_center_mode <- data.frame(mode_age, mode_weight, mode_DeliveryNo, mode_DeliveryTime, mode_BP,
                                     mode_Heart_Disease, mode_caesarian)
Measure_of_center_mode

#Range of spread range
range(dataset_mid$Age, na.rm = TRUE)
range_Age <- max(dataset_mid$Age)-min(dataset_mid$Age)
range_Age
range(dataset_mid$weight.kg., na.rm = TRUE)
range_weight <- max(dataset_mid$weight.kg.)-min(dataset_mid$weight.kg.)
range_weight
range(dataset_mid$Delivery_number, na.rm = TRUE)
range_DeliveryNo <- max(dataset_mid$Delivery_number)-min(dataset_mid$Delivery_number)
range_DeliveryNo
range(dataset_mid$Delivery_time, na.rm = TRUE)
range_DeliveryTime <- max(dataset_mid$Delivery_time)-min(dataset_mid$Delivery_time)
range_DeliveryTime
range(dataset_mid$Heart, na.rm = TRUE)
range(dataset_mid$Caesarian, na.rm = TRUE)
Measure_of_spread_range <- data.frame(range_Age, range_weight, range_DeliveryNo, range_DeliveryTime)
Measure_of_spread_range

#Measure of standard deviation
s1 <- (dataset_mid$Age)
s2 <- (dataset_mid$weight.kg.)
s3 <- (dataset_mid$Delivery_number)
s4 <- (dataset_mid$Delivery_time)
s5 <- (dataset_mid$Heart)
s6 <- (dataset_mid$Caesarian)
SD_age <- sd(s1)
SD_weight <- sd(s2)
SD_DeliveryNo <- sd(s3)
SD_DeliveryTime <- sd(s4)
SD_heart <- sd(s5)
SD_Caesarian <- sd(s6)
Measure_of_SD <- data.frame(SD_age, SD_weight, SD_DeliveryNo, SD_DeliveryTime,
                                                   SD_heart, SD_Caesarian)
Measure_of_SD

#Recovery
colSums(is.na(ds_mid))
mean_recover <- ds_mid
Measure_of_center_mean
mean_recover$Age[is.na(mean_recover$Age)] <- mean_age
mean_recover$weight.kg.[is.na(mean_recover$weight.kg.)] <- mean_weight
mean_recover$Delivery_number[is.na(mean_recover$Delivery_number)] <- mean_Dno
mean_recover$Delivery_time[is.na(mean_recover$Delivery_time)] <- mean_Dt
mean_recover$Heart[is.na(mean_recover$Heart)] <- mean_heart_Disease
mean_recover$Caesarian[is.na(mean_recover$Caesarian)] <- mean_Caesarian
mean_recover
colSums(is.na(mean_recover))
mean_recover$Blood[is.na(mean_recover$Blood)] <- mode_BP
colSums(is.na(mean_recover))


colSums(is.na(ds_mid))
median_recover <- ds_mid
Measure_center_median
median_recover$Age[is.na(median_recover$Age)] <- median_age
median_recover$weight.kg.[is.na(median_recover$weight.kg.)] <- median_weight
median_recover$Delivery_number[is.na(median_recover$Delivery_number)] <- median_Dno
median_recover$Delivery_time[is.na(median_recover$Delivery_time)] <- median_DeliveryTime
median_recover$Heart[is.na(median_recover$Heart)] <- median_heart_Disease
median_recover$Caesarian[is.na(median_recover$Caesarian)] <- median_Caesarian
median_recover
median_recover$Blood[is.na(median_recover$Blood)] <- mode_BP
colSums(is.na(median_recover))

colSums(is.na(ds_mid))
mode_recover <- ds_mid
Measure_of_center_mode
mode_recover$Age[is.na(mode_recover$Age)] <- mode_age
mode_recover$weight.kg.[is.na(mode_recover$weight.kg.)] <- mode_weight
mode_recover$Delivery_number[is.na(mode_recover$Delivery_number)] <- mode_DeliveryNo
mode_recover$Delivery_time[is.na(mode_recover$Delivery_time)] <- mode_DeliveryTime
mode_recover$Blood[is.na(mode_recover$Blood)] <- mode_BP
mode_recover$Heart[is.na(mode_recover$Heart)] <- mode_Heart_Disease
mode_recover$Caesarian[is.na(mode_recover$Caesarian)] <- mode_caesarian
mode_recover
colSums(is.na(mode_recover))

data <- dataset_mid 
hist (dataset_mid$Age)
hist(dataset_mid$weight.kg.)
hist(dataset_mid$Heart)
hist(dataset_mid$Age , breaks = 100)
hist(dataset_mid$weight.kg. , breaks = 100)
hist(dataset_mid$Heart , breaks = 100)









