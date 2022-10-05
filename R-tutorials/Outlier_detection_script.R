args = commandArgs(trailingOnly=T)
if (length(args) == 3) {
  df <- read.csv(file = args[1], sep = ',', header = T)
  var <- df[,args[2]]
  outlier_value <- boxplot.stats(var)$out
  observations <- which(var %in% c(outlier_value))
  outlier <- df[observations, 1]
  write.table(outlier, file = args[3], sep = ',',row.names = F, col.names = F, quote = F)
  boxplot(var,notch = T, col = "aquamarine3", ylab = args[2], xlab = "", main = "Dispersion")
  cat(paste("Input file name is",args[1],"& output file name is",args[3],"for variable",args[2],"\n"))
  cat("Check Rplots.pdf for visual inspection of dispersion and/or outliers","\n")
} else {
  stop(paste("No. of arguments is not equals to 3"))
}

