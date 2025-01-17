setwd("C:/Users/tanni/OneDrive/Documents/BIOL243")
myData = read.csv("Chickweight_Wed 2.csv")
head(myData)

str(myData)

myData2= read.csv("Chickweight_Wed 2.csv", colClasses=c('factor','factor','numeric','numeric'))
str(myData2)

dietData1=subset(myData2,Diet==1)

dietData2=subset(myData2,Diet==2)

dietData3=subset(myData2,Diet==3)

dietData4=subset(myData2,Diet==4)

mean1 = mean(dietData1$Weight)
mean2 = mean(dietData2$Weight) 
mean3 = mean(dietData3$Weight) 
mean4 = mean(dietData4$Weight) 


plot(dietData2$Time, dietData2$Weight, xlab="Time (days)", ylab="Weight (grams)")

diff21 = 100 * (mean2 - mean1)/mean1
diff32 = 100 * (mean3 - mean2)/mean2
diff43 = 100 * (mean4 - mean3) /mean3
