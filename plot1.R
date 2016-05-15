
# Exploratory Data Analysis
# Mike Higgins - 2016-05-15
# plot1.R

# load the data
source("dataload.R")

# Set labels
xlab <- "Global Active Power (kilowatts)"
ylab <- "Frequency"
main <- "Global Active Power"

png("plot1.png")
par(mfrow = c(1, 1))
hist(electric$Global_active_power, col="red", xlab=xlab, ylab=ylab, main=main)
dev.off()
