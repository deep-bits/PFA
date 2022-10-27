data <- iris
sepal_length <- data$Sepal.Length
hist(sepal_length,probability = T)
lines(density(sepal_length))

data <- rnorm(1000,mean = 100,sd = 10)
hist(data,probability = T)
lines(density(data))
lines(density(data), lty="dotted")

