weight <- read.csv("input.csv", header = T, sep = ",")
weight
plot(weight$ï..chocolate.x.,weight$weight.y.)
plot(weight, main = "chocolate vs  Weight", xlab = "Chocolate (grams)",
     ylab = "Weight (kgs)")
names(weight) <- c("Chocolate (x)","Weight (kgs)")
names(weight)
## conf.level cab be adjusted
cor.test(weight$`Chocolate (x)`,weight$`Weight (kgs)`,conf.level = 0.99)
## alternative can be set to "greater" or "two.sided"
cor.test(weight$`Chocolate (x)`,weight$`Weight (kgs)`,alternative = "greater")
## regression line
details<-lm(weight$`Weight (kgs)`~ weight$`Chocolate (x)`)
abline(details, col="red")
