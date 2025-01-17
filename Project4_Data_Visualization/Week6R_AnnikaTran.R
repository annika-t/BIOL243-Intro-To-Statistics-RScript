setwd("C:/Users/tanni/OneDrive/Documents/BIOL243")
MyData = read.csv("bullying-Wed 2.csv")
head(MyData)

str(MyData)

MyData$Intervene_MorallyWrong = factor(MyData$Intervene_MorallyWrong, levels=c("Agree", "Somewhat agree", "Somewhat disagree", "Disagree", "Prefer not to say"))

a = subset(MyData, MyData$GenderIdentity=="Boy")
b= table(a$Age, a$Intervene_MorallyWrong)

b

prop.table(b, 1)
prop.table(b, 2)

c = subset(MyData, MyData$Age==18)
barplot(table(c$Intervene_MorallyWrong, c$GenderIdentity), xlab="Gender Identity", ylab="Frenquecy", col=c('red','lightblue','blue','yellow','green'), beside=TRUE, main="Intervention Responses by Gender Identity for 18-Year-Olds")

d=legend(17,60, c('Agree','Somewhat Agree','Somewhat Agree','Disagree', 'Prefer not to say'), col=c('red','lightblue','blue','yellow'), pch=19)
