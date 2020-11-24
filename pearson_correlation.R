weight <- read.csv("input.csv", header = T, sep = ",")
weight
plot(weight$ï..chocolate.x.,weight$weight.y.)
plot(weight, main = "chocolate vs  Weight", xlab = "Chocolate (grams)",
     ylab = "Weight (kgs)")
names(weight) <- c("Chocolate","Weight")
names(weight)
## conf.level cab be adjusted
cor.test(weight$Chocolate,weight$Weight,conf.level = 0.99)
## alternative can be set to "greater" or "two.sided"
cor.test(weight$Chocolate,weight$Weight,alternative = "greater")
## regression line
details<-lm(weight$Weight~ weight$Chocolate)
abline(details, col="red")
details
