source("getFinalDataWithDateTime.R")

# Open png device as the legend is cut off otherwise
png(filename = "plot4.png", height = 480, width = 480)

par(mfrow=c(2,2))

with(finalData, plot(Global_active_power~DateTime, type="l", xlab="", ylab="Global Active Power"))

with(finalData, plot(Voltage~DateTime, type="l", xlab="datetime", ylab="Voltage"))

with(finalData, plot(Sub_metering_1~DateTime, type="l", xlab="", ylab="Energy sub metering"))

with(finalData, lines(Sub_metering_2~DateTime, type = "l", col = "Red"))

with(finalData, lines(Sub_metering_3~DateTime, type = "l", col = "Blue"))

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), bty="n", lwd=1, cex = 0.5)

with(finalData, plot(Global_reactive_power~DateTime, type="l", xlab="datetime", ylab="Global_reactive_power"))

dev.off()