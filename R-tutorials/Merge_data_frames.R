library(stats)
getwd()
setwd("~/GitHub/PFA")
data1 <- cars[1:20,1]
data2 <- iris[1:20,5]
data <- data.frame(data1, data2)
colnames(data1) <- c('Cars','Flower')
write.csv(file = 'Merged_data_frames.csv', x = data)