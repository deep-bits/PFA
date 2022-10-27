dist1 <- c(1,2,3,4,5,6,7,8,9,1,4,4,2,6,3,7,3,6,8,3,2,6,8,3,1,6,8)
dist2 <- c(2,6,3,6,8,1,7,8,3,8,5,3,9,7,4,2,7,3,7,3,7,2,4,2,3,8,5)
boxplot(dist1,notch = F)
boxplot(dist2,notch = F)
boxplot(dist1 ~ dist2,horizontal = F,notch = F)

attach(mtcars)
boxplot(mpg~cyl,notch = F,col=rainbow(3))
detach(mtcars)

data <- iris
boxplot(data$Sepal.Length, notch = TRUE)
boxplot(data$Sepal.Width, horizontal = TRUE)
boxplot(data$Petal.Length)
boxplot(data$Petal.Width)

boxplot(data$Sepal.Length ~ data$Sepal.Width)
boxplot(data$Petal.Length ~ data$Petal.Width, horizontal = T,col=rainbow(20))
boxplot(data$Petal.Width~data$Petal.Length)

        