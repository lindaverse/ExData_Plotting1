png("plot1.png", width=480, height=480)

hist(data$globalActivePower, col="red", main="Global Active Power", 
     xlab="Global Active Power (Kilowatts)", ylab="Frequency")

dev.off()