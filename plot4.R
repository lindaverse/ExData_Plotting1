#If the data has not already been loaded into R, download and load it.
if(!exists("powerConsumptionData")) source("loadData.R")

png("plot4.png", width=480, height=480)

#Sets the number of plots to be displayed to 2x2.
par(mfrow=c(2,2))

#First plot.
with(powerConsumptionData, plot(dateTime, globalActivePower, type="o", pch=26, ylab="Global Active Power (kilowatts)", xlab=""))

#Second plot.
with(powerConsumptionData, plot(dateTime, voltage, type="o", pch=26, ylab="Voltage", xlab="datetime"))

#Third plot.
with(powerConsumptionData, plot(dateTime, subMeteringOne, type="o", pch=26, ylab="Global Active Power (kilowatts)", xlab=""))
with(powerConsumptionData, lines(dateTime, subMeteringTwo, type="o", pch=26, col="red"))
with(powerConsumptionData, lines(dateTime, subMeteringThree, type="o", pch=26, col="blue"))
legend("topright", col=c("black", "red", "blue"),
       legend=c("sub_metering_1", "sub_metering_2", "sub_metering_3"), lty=1, bty="n", cex=1)

#Fourth plot.
with(powerConsumptionData, plot(dateTime, globalReactivePower, type="o", pch=26, ylab="Global_reactive_power", xlab="datetime", yaxt="n"))
axis(2, at=c(0.1, 0.2, 0.3, 0.4, 0.5))

dev.off()

