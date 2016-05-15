
# Exploratory Data Analysis
# Mike Higgins - 2016-05-15
# plot3.R

# load the data
source("dataload.R")

# Set labels
xlab <- ""
ylab <- "Energy sub metering"
main <- ""

png("plot3.png")
par(mfrow = c(1, 1))
plot(electric$DateTime, electric$Sub_metering_1, type="l", col="black", ylab=ylab, xlab=xlab)
points(electric$DateTime, electric$Sub_metering_2, type="l", col="red")
points(electric$DateTime, electric$Sub_metering_3, type="l", col="blue")

# print legend
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lwd=c(2.5,2.5,2.5), lty=c(1,1,1))

dev.off()