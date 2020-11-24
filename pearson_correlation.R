weight <- read.csv("input.csv", header = T, sep = ",")
weight
plot(weight$ï..chocolate.x.,weight$weight.y.)
plot(weight, main = "chocolate vs  Weight", xlab = "Chocolate (grams)",
     ylab = "Weight (kgs)")
names(weight) <- c("Chocolate (x)","Weight (kgs)")
names(weight)
