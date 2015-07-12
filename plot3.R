## Start by making sure we're working with our prepared dataset
source("HouseholdPowerData_setup.R")

## Creating a plot of sub meter readings 1-3 against their corresponding timestamps
plot(datHP$timestamp, datHP$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(datHP$timestamp, datHP$Sub_metering_2, col="red")
lines(datHP$timestamp, datHP$Sub_metering_3, col="blue")

## Setting legend for the plot
legend("topright", col = c("black", "red", "blue"),
      c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lwd = 1)

## Creating a png file for this plot, we'll call it "plot3"
dev.copy(png, file="plot3.png", height=480, width=480)

dev.off()

