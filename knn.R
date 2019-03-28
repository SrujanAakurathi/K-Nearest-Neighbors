install.packages("caret", dependencies = TRUE)
install.packages("class", dependencies = TRUE)
library(caret)
library(class)
ServiceTrain <- read.csv("C:/Users/Srujan/Documents/Rfiles/serviceTrainData.csv")
ServiceTest <- read.csv("C:/Users/Srujan/Documents/Rfiles/serviceTestData.csv")
View(ServiceTrain)
View(ServiceTest)
str(ServiceTrain)
str(ServiceTest)
summary(ServiceTrain)
summary(ServiceTest)
predictedknn <- knn(train = ServiceTrain[,-6], test = ServiceTest[,-6], cl = ServiceTrain$Service, k = 3)
predictedknn
conf_matrix <- table(predictedknn, ServiceTest[,6])
conf_matrix
Conf_Matrix <- confusionMatrix(data = predictedknn, ServiceTest$Service)
Conf_Matrix
