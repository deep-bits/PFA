library(dplyr)
c_data <- read.csv(file = "Churn_data.csv", header = T, sep = ',')
wrangled <- c_data %>%
    select(1:3) %>%
        rename(C_Id = ID) %>%
            filter(Age > 60) %>%
                arrange(desc(Age)) %>%
                    mutate(Superkey = paste0(C_Id,"-",Age))
