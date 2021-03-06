fb_train <- read.csv("C:/Users/Rushabh/Downloads/Facebook_Training.csv")
View(fb_train)
library(rpart)
library(rpart.plot)
tree<- rpart(Party ~ Days_Since_Last_Doctor_Visit+Shoe_Size, data=fb_train)
rpart.plot(tree)
CrossValidation::cross_validate(fb_train, tree, 5, 0.8)
decision<-predict(tree, newdata=fb_train, type='class')
fb_test <- read.csv("C:/Users/Rushabh/Downloads/FBtest_students.csv")
myprediction <- fb_test
myprediction$Party <-decision
error <- mean(fb_train$Party != myprediction$Party)
submission <- read.csv("C:/Users/Rushabh/Downloads/FBsubmission.csv")
outcome <- data.frame(USERID=submission$USERID, Party=myprediction$Party)
write.csv(outcome, "Prediction3.csv", row.names = F)
