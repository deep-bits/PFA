library(lubridate)
library(forecast) # install.packages('forecast')

# png(file ="timeSeries.png")
data <- lynx
plot(data)
fit <- auto.arima(data)
forecast(fit, 5) # Predict 5 future values
plot(forecast(fit, 10), PI = TRUE)
# dev.off()


# Demo dataset --------------------------------------------------------------------------------

rainfall <- c(799,1174.8,865.1,1334.6,635.4,918.5,685.5,998.6,784.2,985,882.8,1071)
rt <- ts(rainfall,start = c(2012,1),frequency = 12)
print(rt)
rt
plot(rt)
abline(reg=lm(rt~time(rt)))
boxplot(rt~cycle(rt))
plot(aggregate(rt,FUN=mean), type = 'o')
summary(rt)
start(rt)
end(rt)

cycle(AirPassengers)
plot(aggregate(AirPassengers,FUN = mean), type = 'o')
boxplot(AirPassengers~cycle(AirPassengers))
