setwd("C:/Users/tanni/OneDrive/Documents/BIOL243")
MyData = read.csv("Multitasking_Wed 2.csv")
MySample=sample(MyData$Cost, 20)

m=mean(MySample)
m

sd=sd(MySample)
sd

SE=sd/sqrt(length(MySample))
SE

m+qt(0.05,length(MySample)-1)*SE

m+qt(0.95,length(MySample)-1)*SE

mean(MyData$Cost)