setwd("C:/Users/tanni/OneDrive/Documents/BIOL243")
MyData = read.csv("mediasexism_Wed 2.csv")
head(MyData)

str(MyData)

a = plot(MyData$Expert, MyData$Seat, main="Relationship Between the Number of Stories that Portray Women Candidates as Experts, and the Number of Political Seats Won by Women",ylab="Seats Won",xlab="Experts")


b = lm(MyData$Seat~MyData$Expert)
b

c = summary(b)
c

abline(b, col='blue',lwd=2)

residuals(b)

shapiro.test(residuals(b))

d = plot(b, 1)
