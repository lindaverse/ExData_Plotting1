#If the data has not already been loaded into R, download and load it.
if(!exists("powerConsumptionData")) source("loadData.R")

#Creates a histogram and outputs it to a PNG file with a width of 480 pixels and a height of 480 pixels. 
png("plot1.png", width=480, height=480)

hist(powerConsumptionData$globalActivePower, col="red", main="Global Active Power", 
     xlab="Global Active Power (Kilowatts)", ylab="Frequency")

dev.off()

