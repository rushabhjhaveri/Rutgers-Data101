athletegpa <- read.csv("C:/Users/Rushabh/Downloads/Athlete_GPA_Final.csv")
   View(athletegpa)
 athletes.data <- subset(athletegpa, athletegpa$Athletic_Ability > 5)
 nonathletes.data <- subset(athletegpa, athletegpa$Athletic_Ability < 5)
 athletes.gpa <- athletes.data$GPA
 nonathletes.gpa <- nonathletes.data$GPA
 mean.athletes <- mean(athletes.gpa)
 mean.nonathletes <- mean(nonathletes.gpa)
 sd.athletes <- sd(athletes.gpa)
 sd.nonathletes <- sd(nonathletes.gpa)
 len_athletes <- len(athletes.gpa)
 len_athletes <- length(athletes.gpa)
 len_nonathletes <- length(nonathletes.gpa)
 sd.ath.nonath <- sqrt(sd.athletes^2/len_athletes _ sd.nonathletes^2/len_nonathletes)
 sd.ath.nonath <- sqrt(sd.athletes^2/len_athletes + sd.nonathletes^2/len_nonathletes)
 zeta <- (mean.athletes - mean.nonathletes)/sd.ath.nonath
 zeta
[1] 6.151436
 plot(x=seq(from = -5, to= 5, by=0.1),y=dnorm(seq(from = -5, to= 5,  by=0.1),mean=0),type='l',xlab = 'mean difference',  ylab='possibility')
 abline(v=zeta, col='red')
 p <- 1-pnorm(zeta)
 p
[1] 3.83923e-10
 zetaopp <- (mean.nonathletes - mean.athletes)/sd.ath.nonath
 zetaopp
[1] -6.151436
 plot(x=seq(from = -5, to= 5, by=0.1),y=dnorm(seq(from = -5, to= 5,  by=0.1),mean=0),type='l',xlab = 'mean difference',  ylab='possibility')
 abline(v=zeta, col='red')
 popp <- 1 - pnorm(zetaopp)
 popp
[1] 1
 install.packages("devtools")
 PermutationTestSecond::Permutation(athletegpa, "Athletic_Ability", "GPA",1000,"Non-Athlete", "Athlete")

 PermutationTestSecond::Permutation(athletegpa, "Athletic_Ability", "GPA",1000)
 PermutationTestSecond::Permutation(athletegpa, "Athletic_Ability", "GPA",1000, "athletes.data", "nonathletes.data")
 boxplot(athletes.data$GPA ~ nonathletes.data$GPA)
 plot(athletegpa$Athletic_Ability, athletegpa$GPA)
 plot(athletegpa$Athletic_Ability, athletegpa$GPA, type = "l")
 plot(athletegpa$Athletic_Ability, athletegpa$GPA, type = "h")
 plot(athletes.data$GPA)
 library(ggplot2)
 ggplot(athletegpa, aes(athletegpa$GPA))+geom_density()
 boxplot(athletegpa$GPA)
 boxplot(athletegpa$GPA ~ athletegpa$Athletic_Ability)
 boxplot(athletegpa$Athletic_Ability ~ athletegpa$GPA)
 boxplot(athletes.data$Athletic_Ability ~ athletes.data$GPA)
 plot(athletes.gpa, nonathletes.gpa)
 barplot(athletegpa$School ~ athletegpa$GPA)
 barplot(athletegpa$School ~ athletes.gpa)
 barplot(table(athletegpa$Athletic_Ability))
 athletes.data.school <- tapply(athletes.data$GPA, athletes.data$School, mean)
 barplot(athletes.data.school, col = c(5:9), ylim = c(0,20))
 barplot(athletes.data.school, col = c(5:9), ylim = c(0,5))
 athletes.data.gpa <- tapply(athletes.data$GPA, athletes.data$Athletic_Ability, mean)
 barplot(athletes.data.gpa, col = (5:9), ylim = (0,5))
 barplot(athletes.data.gpa, col = c(5:9), ylim = c(0,5))
 barplot(athletes.data.gpa, col = c(5:9), xlim = c(0,10) ylim = c(0,5))
 barplot(athletes.data.gpa, col = c(5:9), xlim = c(0,10), ylim = c(0,5))
 barplot(athletes.data.gpa, col = c(5:9), ylim = c(0,5))
 nonathletes.data.gpa <- tapply(nonathletes.data$GPA, nonathletes.data$Athletic_Ability, mean)
 barplot(nonathletes.data.gpa, col = c(5:9), ylim = c(0,5))
 save.image("~/data101_week5.R.RData")