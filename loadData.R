#Download, unzip file and load data into R. 
temp <- tempfile()
download.file("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", temp)
powerConsumptionData <- read.table(unz(temp, "household_power_consumption.txt"), sep=";", skip=66637, nrow=2880)
colnames(powerConsumptionData) <- c("date", "time", "globalActivePower", "globalReactivePower", "voltage", "globalIntensity", 
                    "subMeteringOne", "subMeteringTwo", "subMeteringThree")
unlink(temp)

#Create a new variable that is an R DateTime.
powerConsumptionData <- within(powerConsumptionData, dateTime <- strptime(paste(date, time, sep=" "), "%d/%m/%Y %H:%M:%S"))
