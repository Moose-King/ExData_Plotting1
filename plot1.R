## Start by making sure we're working with our prepared dataset
source("HouseholdPowerData_setup.R")

## Creating a histogram png of the "Global Active Power" in our dataset 
hist(datHP$Global_active_power, main= "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")

## Creating a png file of the histogram we made, we'll call it "plot1.png"
dev.copy(png, file= "plot1.png", height=480, width=480)
dev.off()
