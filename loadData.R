#Download, unzip file and load data into R. 
temp <- tempfile()
download.file("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", temp)
data <- read.table(unz(temp, "household_power_consumption.txt"), sep=";", skip=66637, nrow=2880)
colnames(data) <- c("date", "time", "globalActivePower", "globalReactivePower", "voltage", "globalIntensity", 
                    "subMeteringOne", "subMeteringTwo", "subMetteringThree")
unlink(temp)

data <- within(data, dateTime <- strptime(paste(date, time, sep=" "), "%d/%m/%Y %H:%M:%S"))
