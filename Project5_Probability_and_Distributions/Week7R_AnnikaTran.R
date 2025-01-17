setwd("C:/Users/tanni/OneDrive/Documents/BIOL243")
Data1968 = read.csv("Winning_Times_Marathon.csv")
head(Data1968)

WinData1968 = subset(Data1968, Data1968$Year==1968)
head(WinData1968)

Data2019 = read.csv("Marathon_Wed 2.csv")
head(Data2019)

MenUnder30 = subset(Data2019, Data2019$Gender=="M" & Age < 30)
WomenUnder30 = subset(Data2019, Data2019$Gender=="F" & Age < 30)

HistM30 = hist(MenUnder30$OfficialTime.Minutes, main="Men Under 30 Race Time in Minutes in 2019 who ran the the Boston Marathon", xlab="Minutes", col="blue")
L1 = abline(v=142.3, col="red", lwd=2)

HistF30 = hist(WomenUnder30$OfficialTime.Minutes, main="Women Under 30 Race Time in Minutes in 2019 who ran the the Boston Marathon", xlab="Minutes", col="red", xlim=c(100, 400))
L2 = abline(v=210.0, col="blue", lwd=2)

Men2019 = subset(MenUnder30, OfficialTime.Minutes<142.3)

NumberMalesUnder30 = length(MenUnder30$OfficialTime.Minutes)
NumberMalesUnder30Winners = length(Men2019$OfficialTime.Minutes)
PercentMaleWinners=100*(NumberMalesUnder30Winners/NumberMalesUnder30)

mean_men = mean(MenUnder30$OfficialTime.Minutes)
sd_men = sd(MenUnder30$OfficialTime.Minutes)

Women2019 = subset(WomenUnder30, OfficialTime.Minutes<210.0)

NumberFemalesUnder30 = length(WomenUnder30$OfficialTime.Minutes)
NumberFemalesUnder30Winners = length(Women2019$OfficialTime.Minutes)
PercentFemaleWinters=100*(NumberFemalesUnder30Winners/NumberFemalesUnder30)

mean_women = mean(WomenUnder30$OfficialTime.Minutes)
sd_women = sd(WomenUnder30$OfficialTime.Minutes)



mw = pnorm(142.3, mean_men, sd_men)
ww = pnorm(210.0, mean_women, sd_women)

mw10 = qnorm(0.10, mean_men, sd_men)
ww10 = qnorm(0.10, mean_women, sd_women)

