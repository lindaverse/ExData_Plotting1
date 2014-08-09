png("plot3.png", width=480, height=480)

with(data, plot(dateTime, subMeteringOne, type="o", pch=26, ylab="Global Active Power (kilowatts)", xlab=""))
with(data, lines(dateTime, subMeteringTwo, type="o", pch=26, col="red"))
with(data, lines(dateTime, subMeteringThree, type="o", pch=26, col="blue"))
legend("topright", col=c("black", "red", "blue"),
       legend=c("sub_metering_1", "sub_metering_2", "sub_metering_3"), lty=1)

dev.off()
