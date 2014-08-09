png("plot2.png", width=480, height=480)

with(data, plot(dateTime, globalActivePower, type="o", pch=26, ylab="Global Active Power (kilowatts)", xlab=""))

dev.off()