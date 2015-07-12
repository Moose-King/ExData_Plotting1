## Start by downloading household power consumption dataset we'll be using 
if(!file.exists("exdata-data-household_power_consumption.zip")){
  temp <- tempfile()
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",temp)
  file <- unzip(temp)
  unlink(temp)
}
## Set up 
housepower <- read.table(file, header = TRUE, sep = ";")

## Settting format for the dates
housepower$Date <- as.Date(housepower$Date, format="%d/%m/%Y")

## Subsetting for the dates we'll be looking at 02/01/2007 and 02/02/2007 we'll call this "datHP"
datHP <- housepower[(housepower$Date =="2007-02-01") | (housepower$Date =="2007-02-02"),]

## Since Global_active_power is a factor, we'll want to convert it to numeric by first converting it to a character
datHP$Global_active_power <- as.numeric(as.character(datHP$Global_active_power))

## Same story here for Global_reactive_power
datHP$Global_reactive_power <- as.numeric(as.character(datHP$Global_reactive_power))

## And again here for Voltage
datHP$Voltage <- as.numeric(as.character(datHP$Voltage))

## Our subsetted dataset along with the corresponding timestamps
datHP <- transform(datHP, timestamp= as.POSIXct(paste(Date, Time)))

## Sub_metering 1 through 3 are all factors and we'll want to turn them into numerics too
datHP$Sub_metering_1 <- as.numeric(as.character(datHP$Sub_metering_1))
datHP$Sub_metering_2 <- as.numeric(as.character(datHP$Sub_metering_2))
datHP$Sub_metering_3 <- as.numeric(as.character(datHP$Sub_metering_3))
