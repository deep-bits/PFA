rm(list=ls())
c_data <- read.csv(file = 'Churn_data.csv', sep = ',', header = T)
f_data <- select(c_data, 1:3)
f1_data <- f_data[1:100, ]
f2_data <- arrange(f1_data, f1_data$Age)
f3_data <- rename(f2_data, C_id = ID)
f4_data <- filter(f3_data, C_id == 'd9c5acdc')
f5_data <- mutate(c_data, Superkey = paste0(ID,"_",Age))
f6_data <- summarise(c_data, mean_balance = mean(Balance), mean_age = mean(Age))
f7_data <- summarise(group_by(c_data, Age))
                     