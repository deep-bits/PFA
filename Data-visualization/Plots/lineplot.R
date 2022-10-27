sepal_width <- iris$Sepal.Width
sepal_length <- iris$Sepal.Length
petal_width <- iris$Petal.Width
petal_length <- iris$Petal.Length

par(mfrow=c(2,2))
plot(1:150,sepal_width, col = "dodgerblue2", type = "l")
par(new=T)
plot(1:150,sepal_length, col = "olivedrab",type = "l")
plot(1:150,petal_width, col = "coral",type = "l")
plot(1:150,petal_length, col = "aquamarine3",type = "l",lty = "dotted")
abline(v = 50, col = gray(0.5))
dev.off()
