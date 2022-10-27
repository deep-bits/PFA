attach(iris)
pairs(Species~Sepal.Length+Sepal.Width+Petal.Length+Petal.Width)
plot(Petal.Length,Petal.Width)
plot(Petal.Width,Petal.Length)
detach(iris)
plot(Sepal.Length,Species)
counts <- table(mtcars$cyl, mtcars$gear)
barplot(counts, main="Car Distribution by Gears and Cylinders",
        xlab="Number of Gears", ylab = "Cylinders",col=c("blue","red","green"),
        legend = rownames(counts)) 
