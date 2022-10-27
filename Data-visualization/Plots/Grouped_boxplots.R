# R script to draw grouped boxplots ---------------------------------------

library(dplyr)
data <- read.csv(file = "https://raw.githubusercontent.com/deep-bits/PFA/main/Data-wrangling/Churn_data.csv")
g1 <- filter(data, Gender == "Male")
g2 <- filter(data, Gender == "Female")

# Visualization -----------------------------------------------------------

boxplot(g1$Age, g1$Balance, add = F, boxwex = 0.2, at = c(1,4) + 0.1,
        # xlim = c(1, 5), ylim = c(-3,8),
        col = "salmon3", notch = FALSE)
boxplot(g2$Age, g2$Balance, add = T, boxwex = 0.2, at = c(1,4) + 0.4,
        col = "deepskyblue2", notch = FALSE)
legend(1, 7,c("Male", "Female"), fill = c("salmon3","deepskyblue"), border = T, bty = "n")

