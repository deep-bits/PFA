
# Simple barplot ----------------------------------------------------------

data <- iris$Sepal.Length[1:10]
barplot(data,horiz = F,col = c("salmon3")) 
nlevels(factor(data))

# Grouped barplot ---------------------------------------------------------

data <- matrix(0,2,5)
data[1,] <- iris$Sepal.Width[seq(1,5)]
data[2,] <- iris$Sepal.Length[seq(1,5)]
print(data)
barplot(data, beside=T,col = c("dodgerblue2","tomato2"),
        xlim = c(0,15), ylim = c(0, 10))
legend(x = 6, y = 10, c("Sepal Width","Sepal Length"), pch=17, col=c("blue","green"), bty="y")
dev.off()

