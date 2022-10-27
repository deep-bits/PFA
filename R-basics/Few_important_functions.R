#  Few important functions ------------------------------------------------

# rep() - Replicate values
c1 <- rep(1,5); # Write 1, 5 times equals to c(1,1,1,1,1)
str(c1)
c2 <- c(1,1,1,1,1)
str(c2)
c3 <- rep('c',3); str(c3)
rep(5:3, each = 3)
rep(5:3, c(3,3,3))  # Why long code
rep(3:5, times = 2)
rep(3:5, each = 2, times = 2, times.out = 2)
rep(letters[1:3],2)
mixture <- list(numbers = 2:4, alphabets = letters[2:4])
str(mixture)
double.mix <- rep(mixture,2)
str(double.mix)

# Seq() -------------------------------------------------------------------
# Sequence Generation
# Use it to generate a sequence with equally distant values

seq(from = 10, to = 100, by = 10) # Start value 10, End value 100, gap = 10
seq(from = 10, to = 100, length.out = 10) # Generate total 10 numbers

# Generate random values for your data
set.seed(11)  # To get the same random values always
rnorm(100) 

#Available datasets (For free)
data(lynx)
a <- lynx
a <- Titanic
a <- cars
mtcars
length(lynx)
summary(iris)
str(iris)
str(cars)
summary(cars)
range(cars$speed)
diff(range(cars$speed))
