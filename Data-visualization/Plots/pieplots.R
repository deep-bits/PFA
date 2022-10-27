mytable <- table(iris$Species)
# percent <- format(mytable/sum(mytable) * 100,digits=4) # You can round off using round() function eg. round(pct)
# lbls <- paste(mytable, names(mytable), "(",percent,"%",")")
pie(mytable)

