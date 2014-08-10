#Download, unzip file and load data into R. 
temp <- tempfile()
download.file("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", temp)
data <- read.table(unz(temp, "household_power_consumption.txt"), sep=";", skip=66637, nrow=2880)
colnames(data) <- c("date", "time", "globalActivePower", "globalReactivePower", "voltage", "globalIntensity", 
                    "subMeteringOne", "subMeteringTwo", "subMeteringThree")
unlink(temp)

#Create a new variable "dateTime" that contains the date (class: POSIXlt) and time (class: POSIXt) of 
#meter readings.
data <- within(data, dateTime <- strptime(paste(date, time, sep=" "), "%d/%m/%Y %H:%M:%S"))
