library(rpart.plot)
library(rpart)


tree <- rpart(GRADE ~ SCORE+ASKS_QUESTIONS+LEAVES_EARLY+PARTICIPATION,data=train) #, control = rpart.control(minsplit=200))

CrossValidation::cross_validate(M2018_train, tree, 5, 0.8)


#rpart.plot(tree)
#prp(tree,type=3)
#prp(tree, round=9)

#decision<-predict(tree, newdata=train, type='class')

#myprediction<-M2018_train
myprediction<-M2018_test_students


#decision <- rep('A',nrow(myprediction))


decision[myprediction$SCORE<73.8] <- 'D'

decision[myprediction$SCORE>73.8] <- 'A'

decision[myprediction$SCORE<29] <- 'F'

decision[myprediction$SCORE>51 & myprediction$SCORE<73.8] <- 'C'

decision[myprediction$SCORE>59 & myprediction$SCORE<73.8] <- 'B'

decision[myprediction$SCORE<51 & myprediction$SCORE>43 & myprediction$PARTICIPATION > 0.5] <- 'C'

decision[myprediction$SCORE>59 & myprediction$SCORE<67 & myprediction$PARTICIPATION < 0.5] <- 'C'

decision[myprediction$SCORE<29 & myprediction$SCORE>24 & myprediction$PARTICIPATION > 0.6] <- 'D'

decision[myprediction$SCORE<80 & myprediction$SCORE>73.8 & myprediction$PARTICIPATION < 0.5] <- 'B'

decision[myprediction$SCORE<30 & myprediction$SCORE>24 & (myprediction$ASKS_QUESTIONS== "always" | myprediction$LEAVES_EARLY == "never") & myprediction$PARTICIPATION > 0.6] <- 'D'
decision[myprediction$SCORE<30 & myprediction$SCORE>24 & (myprediction$ASKS_QUESTIONS== "sometimes" & myprediction$LEAVES_EARLY == "rarely") & myprediction$PARTICIPATION > 0.6] <- 'D'
decision[myprediction$SCORE<51 & myprediction$SCORE>43 & (myprediction$ASKS_QUESTIONS== "always" | myprediction$LEAVES_EARLY == "never") & myprediction$PARTICIPATION > 0.5] <- 'C'
decision[myprediction$SCORE<51 & myprediction$SCORE>43 & (myprediction$ASKS_QUESTIONS== "sometimes" & myprediction$LEAVES_EARLY == "rarely") & myprediction$PARTICIPATION > 0.5] <- 'C'
decision[myprediction$SCORE<70 & myprediction$SCORE>59 & (myprediction$ASKS_QUESTIONS== "always" | myprediction$LEAVES_EARLY == "never") & myprediction$PARTICIPATION > 0.6] <- 'B'
decision[myprediction$SCORE<70 & myprediction$SCORE>59 & (myprediction$ASKS_QUESTIONS== "sometimes" & myprediction$LEAVES_EARLY == "rarely") & myprediction$PARTICIPATION > 0.6] <- 'B'
decision[myprediction$SCORE<80 & myprediction$SCORE>73 & (myprediction$ASKS_QUESTIONS== "always" | myprediction$LEAVES_EARLY == "never") & myprediction$PARTICIPATION > 0.7 ] <- 'A'
decision[myprediction$SCORE<80 & myprediction$SCORE>73 & (myprediction$ASKS_QUESTIONS== "sometimes" & myprediction$LEAVES_EARLY == "rarely") & myprediction$PARTICIPATION > 0.7] <- 'A'


myprediction$GRADE <-decision
M2018_test_students$GRADE <-decision
outcome<-data.frame(STUDENTID=M2018_test_students$STUDENTID,GRADE=myprediction$GRADE)
write.csv(outcome,"moodyrpart.csv",row.names = F)


#M2018_train$my_Projection <-decision
#error <- mean(M2018_train$GRADE != myprediction$GRADE)
