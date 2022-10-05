# Read and subset the data ------------------------------------------------

data <- cars
boxplot(data$speed)
pt <- as.integer(readline("Enter data point type : ")) # You may type 16 for solid circles
plot(data$dist, data$speed, pch = pt)
lmr <- lm(data$speed ~ data$dist)
abline(lmr)
cor.test(data$speed, data$dist)
median(data$speed)
par(new=TRUE)

