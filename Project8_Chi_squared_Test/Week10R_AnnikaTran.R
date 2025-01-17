setwd("C:/Users/tanni/OneDrive/Documents/BIOL243")
MyData = read.csv("Politicalparty_Wed 2.csv")
head(MyData)

str(MyData)

a = table(MyData$Race, MyData$Party)
a

b = chisq.test(MyData$Race, MyData$Party)
b

c = qchisq(0.95, 9)
c
