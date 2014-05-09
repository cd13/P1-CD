# Set working directory.
setwd ("C:/Users/Caroline/Education/R/Graphics")
# Data file was first opened in Excel and only the data required for the assignment was read into r.
data <- read.table(file="household_power_consumption.txt",sep=";",dec=".",na.strings="?",skip=66637,nrow=2880, header= TRUE, col.names = colnames(read.table("household_power_consumption.txt",nrow = 1, header = TRUE, sep=";")))
# Date and time columns are joined to create one column "DateTime".
DateTime <- paste (data$Date, data$Time, sep=" ")
# DateTime converted to obtain days on x axis when required.
DateTime = as.POSIXlt(strptime(DateTime, "%d/%m/%Y %H:%M:%S"))
# Output figure to plot4.png file.
png(filename="C:/Users/Caroline/Education/R/Graphics/plot4.png", height=480, width=480, bg="transparent")
# Specifying placement of figures, margins and transparent background.
par(mfrow=c(2,2),mar=c(5,4,4,2), bg=NA)
# Figure top-left: Scatterplot of Global active power in terms of days.
with  (data,plot(DateTime,Global_active_power, type="l", ylab="Global Active Power", xlab=""))
# Figure top-right: Scatterplot of Voltage in terms of days.
with  (data,plot(DateTime,Voltage, type="l", ylab="Voltage", xlab="datetime"))
# Figure bottom-left: Scatterplot of Sub_metering_1/_2/_3 data in terms of days with legend.
with  (data,plot(DateTime,Sub_metering_1, type="l", ylab="Energy sub metering", xlab=""))
lines(DateTime,data$Sub_metering_2, type="l", col="red")
lines(DateTime,data$Sub_metering_3, type="l", col="blue")
legend("topright", legend=names(data[7:9]), lty=1, col=c("black","red","blue"), bty="n", bg="transparent")
# Figure bottom-right: Scatterplot of Global reactive power in terms of days.
with  (data,plot(DateTime,Global_reactive_power, type="l", xlab="datetime"))
# Close plot4.png file.
dev.off()
