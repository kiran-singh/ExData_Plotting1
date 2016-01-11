library(sqldf)

# Use SQL to extract only the required subset from the downloaded text file.
finalData <- read.csv.sql(file = "household_power_consumption.txt", sql = "select * from file where Date in ('1/2/2007','2/2/2007')", header = T, sep = ";")

closeAllConnections() # close connection