library(sqldf)

fileName <- "household_power_consumption.txt"

# download and unzip file if required
if(!file.exists(fileName)){
  temp <- tempfile()
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",temp)
  unzip(temp)
  unlink(temp)
}

# Use SQL to extract only the required subset from the downloaded text file.
# read.csv2.sql defaults header to TRUE and sep to ";"
finalData <- read.csv2.sql(file = fileName, sql = "select * from file where Date in ('1/2/2007','2/2/2007')")

closeAllConnections() # close connection