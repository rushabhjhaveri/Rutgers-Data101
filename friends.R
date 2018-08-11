install.packages("e1071")
library(e1071)

train<-read.csv("C:/Users/Rushabh/Downloads/Friend_Training.csv")
test<-read.csv("C:/Users/Rushabh/Downloads/Friend_Testing.csv")
submission<-read.csv("C:/Users/Rushabh/Downloads/Friend_submission.csv")
train$Friends = factor(train$Friends)
perf.nb = naiveBayes(Friends ~ Person_1+Person_2+Years_Known+Type_Of_Interaction+Duration_Of_Interaction+Moon_Phase, data = train)
pred = predict(perf.nb, newdata = train)
mean((pred==train$Friends)^2)
pred = predict(perf.nb, newdata = test)
submission$Friends<-pred
write.csv(submission, "Prediction5.csv", row.names = F)