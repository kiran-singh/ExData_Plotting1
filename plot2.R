source("getFinalDataWithDateTime.R")

with(finalData, plot(Global_active_power~DateTime, type = "l", xlab="", ylab = "Global Active Power (kilowatts)"))

dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()