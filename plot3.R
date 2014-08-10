#If the data has not already been loaded into R, download and load it.
if(!exists("powerConsumptionData")) source("loadData.R")

#Creates a plot and outputs it to a PNG file with a width of 480 pixels and a height of 480 pixels. 
png("plot3.png", width=480, height=480)

with(powerConsumptionData, plot(dateTime, subMeteringOne, type="o", pch=26, ylab="Global Active Power (kilowatts)", xlab=""))
with(powerConsumptionData, lines(dateTime, subMeteringTwo, type="o", pch=26, col="red"))
with(powerConsumptionData, lines(dateTime, subMeteringThree, type="o", pch=26, col="blue"))
legend("topright", col=c("black", "red", "blue"),
       legend=c("sub_metering_1", "sub_metering_2", "sub_metering_3"), lty=1)

dev.off()

