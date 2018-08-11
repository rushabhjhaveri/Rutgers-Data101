train <- read.csv("C:/Users/Rushabh/Downloads/M2018_train.csv")
View(train)
table(train$GRADE)
boxplot(train$SCORE ~ train$GRADE)

boxplot(train$SCORE ~ train$LEAVES_EARLY, main="Scores vs Leaving Early", xlab="Leaving Early", ylab="Score", col=c("green", "cyan"))boxplot(train$SCORE ~ train$ASKS_QUESTIONS, main="Scores vs Asking Questions", xlab="Frequency of Asking Questions", ylab="Score", col=c("gold", "darkgreen"))
boxplot(train$SCORE ~ train$PARTICIPATION, main="Scores vs Participation", xlab="Participation", ylab="Score", col=c("blue", "pink"))
boxplot(train$PARTICIPATION ~ train$GRADE, main="Participation vs Grade", xlab="Grade", ylab="Participation", col=c("blue", "pink"))

tapply(train$SCORE, train$GRADE, min)
tapply(train$SCORE, train$GRADE, max)
decision<-rep('F', nrow(train))

decision[train$SCORE>=22.59 & train$SCORE<35.09 & (train$ASKS_QUESTIONS=="always"|train$ASKS_QUESTIONS=="sometimes") & train$PARTICIPATION>=0.4872]="D"
decision[train$SCORE>=43.04 & train$SCORE<54.91 & (train$ASKS_QUESTIONS=="always"|train$ASKS_QUESTIONS=="sometimes") & train$PARTICIPATION>=0.5416]="C"
decision[train$SCORE>=59.01 & train$SCORE<69.25 & (train$ASKS_QUESTIONS=="always"|train$ASKS_QUESTIONS=="sometimes") & train$PARTICIPATION>=0.5502]="B"
decision[train$SCORE>=66.99 & train$SCORE<82.37 & (train$ASKS_QUESTIONS=="always"|train$ASKS_QUESTIONS=="sometimes") & train$PARTICIPATION>=0.6518]="A"


decision[train$SCORE>=82.37]="A"
decision[train$SCORE>=69.25 & train$SCORE<82.37]="B"
decision[train$SCORE>=54.91 & train$SCORE<69.25]="C"
decision[train$SCORE>=35.09 & train$SCORE<54.91]="D"

test <- read.csv("C:/Users/Rushabh/Downloads/M2018_test_students.csv")
myprediction<-train
myprediction$GRADE <-decision
train$Projection <-decision
error <- mean(train$GRADE!= myprediction$GRADE)

decision<-rep('F', nrow(test))
decision[test$SCORE>=22.59 & test$SCORE<35.09 & (test$ASKS_QUESTIONS=="always"|test$ASKS_QUESTIONS=="sometimes") & test$PARTICIPATION>=0.4872]="D"
decision[test$SCORE>=43.04 & test$SCORE<54.91 & (test$ASKS_QUESTIONS=="always"|test$ASKS_QUESTIONS=="sometimes") & test$PARTICIPATION>=0.5416]="C"
decision[test$SCORE>=59.01 & test$SCORE<69.25 & (test$ASKS_QUESTIONS=="always"|test$ASKS_QUESTIONS=="sometimes") & test$PARTICIPATION>=0.5502]="B"
decision[test$SCORE>=66.99 & test$SCORE<82.37 & (test$ASKS_QUESTIONS=="always"|test$ASKS_QUESTIONS=="sometimes") & test$PARTICIPATION>=0.6518]="A"



decision[test$SCORE>=82.37]="A"
decision[test$SCORE>=69.25 & test$SCORE<82.37]="B"
decision[test$SCORE>=54.91 & test$SCORE<69.25]="C"
decision[test$SCORE>=35.09 & test$SCORE<54.91]="D"

myprediction<-test
myprediction$GRADE<-decision
submission <- read.csv("C:/Users/Rushabh/Downloads/M2018_sample_submission.csv")
output<-data.frame(ID=submission$STUDENTID,GRADE=myprediction$GRADE)
write.csv(output,"March30_submission.csv",row.names = F)
