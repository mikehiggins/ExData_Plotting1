
# Exploratory Data Analysis
# Mike Higgins - 2016-05-15
# plot4.R

# load the data
source("dataload.R")

# open device
png("plot4.png")

# set 2 rows and 2 cols
par(mfrow = c(2, 2))

# First plot
with(electric, plot(DateTime, Global_active_power, type="l", xlab="", ylab="Global Active Power"))

# Second plot
with(electric, plot(DateTime, Voltage, type="l", xlab="datetime", ylab="Voltage"))

# Third plot
plot(electric$DateTime, electric$Sub_metering_1, type="l", col="black", ylab=ylab, xlab=xlab)
points(electric$DateTime, electric$Sub_metering_2, type="l", col="red")
points(electric$DateTime, electric$Sub_metering_3, type="l", col="blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lwd=c(2.5,2.5,2.5), lty=c(1,1,1))

# Fourth plot
with(electric, plot(DateTime, Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power"))

dev.off()