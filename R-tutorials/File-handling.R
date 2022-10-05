filename <- "Text-using-R.txt"
file.create(filename)
x <- c(1:15)
write(file = filename, x)
