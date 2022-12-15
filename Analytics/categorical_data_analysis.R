library(tidyverse)
rm(list=ls())

# Nominals ------------------------------------------------------------------------------------

nominals <- c(20, 200, 2)
min(nominals)
nominals <- as.factor(nominals)
mean(nominals)
typeof(nominals)
str(nominals)
class(nominals)
levels(nominals)
nlevels(nominals)

gender <- as.factor(c(0,1))
typeof(gender)
str(gender)
class(gender)
levels(gender)
nlevels(gender)


levs <- factor(0:3)
levels(levs)
rainbow(nlevels(levs))

# Ordinals ------------------------------------------------------------------------------------

medals <- factor(c('Gold','Gold','Silver', 'Bronze'), ordered = TRUE)
levels(medals)
medals <- fct_expand(medals,"Iron")
medals <- fct_drop(f = medals, only = "Iron") 
medals <- factor(c('Gold','Silver', 'Bronze'), ordered = TRUE, levels = c('Bronze','Silver','Gold'))
fct_shuffle(medals)

data <- mpg
glimpse(data)
fl <- factor(data$fl)
levels(fl)
nlevels(fl)
fct_count(fl, sort = TRUE)  # Considers NAs
fct_unique(fl) # Ignores NAs
fl <- fct_relevel(fl, c('c','d','e','r','p'))
table(fl)
fl %>%
    fct_lump_n(1) %>%
        table()

