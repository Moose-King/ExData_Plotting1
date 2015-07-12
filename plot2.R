## Start by making sure we're working with our prepared dataset
source("HouseholdPowerData_setup.R")

## Creating a plot of Global Active Power against corresponding timestamps(dates and times)
plot(datHP$timestamp, datHP$Global_active_power, type = "l", 
     xlab = "", ylab = "Global Active Power (kilowatts)")
## Creating a png file of our plot, we'll call it "plot2"
dev.copy(png, file="plot2.png", height=480, width=480)

dev.off()

