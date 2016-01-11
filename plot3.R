source("getFinalDataWithDateTime.R")

# Open png device as the legend is cut off otherwise
png(filename = "plot3.png", height = 480, width = 480)

with(finalData, plot(Sub_metering_1~DateTime, type="l", xlab="", ylab="Energy sub metering"))

with(finalData, lines(Sub_metering_2~DateTime, type = "l", col = "Red"))

with(finalData, lines(Sub_metering_3~DateTime, type = "l", col = "Blue"))

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=1, col=c("black", "red", "blue"))

dev.off()