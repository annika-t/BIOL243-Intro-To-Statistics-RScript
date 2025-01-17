setwd("C:/Users/tanni/OneDrive/Documents/BIOL243")
MyData = read.csv("Cholesterol_Wed 2.csv")
head(MyData)

str(MyData)

boxplot(MyData$Cholesterol, main="Total Cholesterol Levels of Community Members", xlab="58 Community Members", ylab="Cholesterol (mmol/L)")
L1 = abline(h=5.2, col="blue", lwd=2)

t.test(MyData$Cholesterol, mu=5.2)

qt(0.95,57)

