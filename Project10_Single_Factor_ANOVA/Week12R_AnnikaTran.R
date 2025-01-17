setwd("C:/Users/tanni/OneDrive/Documents/BIOL243")
MyData = read.csv("Insomnia_Wed 2.csv")
head(MyData)

str(MyData)


MyData$Treatment = factor(MyData$Treatment, levels=c("Control", "Medication", "CBT", "Mindfulness"))
boxplot(Sleep~Treatment, data=MyData, main="Sleep Duration by Different Treatment", ylab="Duration of Sleep (Hours)", xlab="Treatment")


a = lm(MyData$Sleep~MyData$Treatment)
a

aa= summary(a)
aa

b = summary(aov(a))
b

residuals(a)
d= shapiro.test(residuals(a))
d

e= bartlett.test(MyData$Sleep~MyData$Treatment)
e

f=TukeyHSD(aov(a))
f