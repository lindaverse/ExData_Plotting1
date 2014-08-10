#Before running this script, please run "loadData.R" which will download the required data and
#load it into R.

#Creates a plot and outputs it to a PNG file with a width of 480 pixels and a height of 480 pixels. 
png("plot2.png", width=480, height=480)

with(data, plot(dateTime, globalActivePower, type="o", pch=26, ylab="Global Active Power (kilowatts)", xlab=""))

dev.off()