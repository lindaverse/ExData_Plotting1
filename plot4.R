png("plot4.png", width=480, height=480)

par(mfrow=c(2,2))

with(data, plot(dateTime, globalActivePower, type="o", pch=26, ylab="Global Active Power (kilowatts)", xlab=""))

with(data, plot(dateTime, voltage, type="o", pch=26, ylab="Voltage", xlab="datetime"))

with(data, plot(dateTime, subMeteringOne, type="o", pch=26, ylab="Global Active Power (kilowatts)", xlab=""))
with(data, lines(dateTime, subMeteringTwo, type="o", pch=26, col="red"))
with(data, lines(dateTime, subMeteringThree, type="o", pch=26, col="blue"))
legend("topright", col=c("black", "red", "blue"),
       legend=c("sub_metering_1", "sub_metering_2", "sub_metering_3"), lty=1, bty="n", cex=1)

with(data, plot(dateTime, globalReactivePower, type="o", pch=26, ylab="Global_reactive_power", xlab="datetime", yaxt="n"))
axis(2, at=c(0.1, 0.2, 0.3, 0.4, 0.5))

dev.off()