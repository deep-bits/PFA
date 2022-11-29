attach(iris)
sepal_width <- Sepal.Width
sepal_length <- Sepal.Length
petal_width <- iris$Petal.Width
petal_length <- iris$Petal.Length

par(mfrow=c(2,2))
plot(sepal_length, col = "dodgerblue2")
par(new=F)
plot(1:150,sepal_length, col = "olivedrab",type = "l")
plot(1:150,petal_width, col = "coral")
plot(1:150,petal_length, col = "aquamarine3",type = "l",lty = "dotted")
abline(v = 50, col = "red")
dev.off()
