#If the data has not already been loaded into R, download and load it.
if(!exists("powerConsumptionData")) source("loadData.R")

#Creates a plot and outputs it to a PNG file with a width of 480 pixels and a height of 480 pixels. 
png("plot2.png", width=480, height=480)

with(powerConsumptionData, plot(dateTime, globalActivePower, type="o", pch=26, ylab="Global Active Power (kilowatts)", xlab=""))

dev.off()

