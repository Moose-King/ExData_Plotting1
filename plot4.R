## Start by making sure we're working with our prepared dataset
source("HouseholdPowerData_setup.R")

## Setting up a 2 by 2 plot to contain the next 4 plots
par(mfrow =c(2,2))

## Creating a plot with Global Active Power against its corresponding timestamp in topleft corner
plot(datHP$timestamp, datHP$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power")

## Creating a plot with Voltage against its corresponding timestamp in top right corner
plot(datHP$timestamp, datHP$Voltage, type = "l",
     xlab = "datetime", ylab = "Voltage")

## Creating a plot with Sub meter data against its corresponding timestamp in bottom left corner
plot(datHP$timestamp, datHP$Sub_metering_1, type = "l",
     xlab = "", ylab = "Energy sub metering ")
lines(datHP$timestamp,datHP$Sub_metering_2, col= "red")
lines(datHP$timestamp,datHP$Sub_metering_3, col= "blue")

## We'll want to remove the border of the legend we'll be creating so
legend("topright", bty = "n", col = c("black","red", "blue"),
       c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lwd = 1)

## Creating a plot of Global Reactive Power against its timestamp in bottom right corner
plot(datHP$timestamp, datHP$Global_reactive_power, type = "l",
     col = "black", xlab = "datetime", ylab = colnames(datHP)[4])

dev.copy(png, file="plot4.png", height=480, width=480)

dev.off()
