jpeg("petal_length_vs_petal_width.jpg") # You can replace jpeg with pdf,bmp and postscript
plot(iris$Petal.Length,iris$Petal.Width)
dev.off()

png("sepal_length_vs_sepal_width.png") # You can replace png with pdf,jpeg,bmp and postscript
plot(iris$Sepal.Length,iris$Sepal.Width)
dev.off()
