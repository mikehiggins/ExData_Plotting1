
# Exploratory Data Analysis
# Mike Higgins - 2016-05-15
# plot2.R

# load the data
source("dataload.R")

# Set labels
xlab <- ""
ylab <- "Global Active Power (kilowatts)"
main <- ""

png("plot2.png")
par(mfrow = c(1, 1))
with(electric, plot(DateTime, Global_active_power, type="l", xlab=xlab, ylab=ylab))
dev.off()