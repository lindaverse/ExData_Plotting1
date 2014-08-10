#Before running this script, please run "loadData.R" which will download the required data and
#load it into R.

#Creates a histogram and outputs it to a PNG file with a width of 480 pixels and a height of 480 pixels. 
png("plot1.png", width=480, height=480)

hist(data$globalActivePower, col="red", main="Global Active Power", 
     xlab="Global Active Power (Kilowatts)", ylab="Frequency")

dev.off()