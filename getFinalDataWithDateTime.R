source("getFinalData.R")

finalData$DateTime <- as.POSIXct(paste(finalData$Date, finalData$Time), format = "%d/%m/%Y %H:%M:%S")