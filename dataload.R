
# Exploratory Data Analysis
# Mike Higgins - 2016-05-15
# dataload.R

# This file takes care of the dataloading and subsetting for each of the plotX.R files

# Data Columns from data file
# 1. Date: Date in format dd/mm/yyyy
# 2. Time: time in format hh:mm:ss
# 3. Global_active_power: household global minute-averaged active power (in kilowatt)
# 4. Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
# 5. Voltage: minute-averaged voltage (in volt)
# 6. Global_intensity: household global minute-averaged current intensity (in ampere)
# 7. Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
# 8. Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
# 9. Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.


colnames <- c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

# Set date and time columns to character to preserve formatting
colclasses <- c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric")

# Loading data file of 130MB and ~2m observations takes too long so subsetting it
# 66638 = first line of 1/2/2007 dates (using grep)
# 69517 = last line of 2/2/2007 dates (using grep)
# 2 days = 24 * 60 * 2 = 2880 observations
# Read in CSV for 2 days worth of observations from 2007-02-01 and 2007-02-02
electric <- read.csv("household_power_consumption.txt", header=FALSE, skip=66637, nrows=2880, sep=";", na.strings = "?", colClasses = colclasses, col.names = colnames)

# Create new column of format "POSIXct"
electric$DateTime <- as.POSIXct(paste(electric$Date, electric$Time), format = "%d/%m/%Y %H:%M:%S")

# process data and generate plots