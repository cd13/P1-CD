# Set working directory.
setwd ("C:/Users/Caroline/Education/R/Graphics")
# Data file was first opened in Excel and only the data required for the assignment was read into r.
data <- read.table(file="household_power_consumption.txt",sep=";",dec=".",na.strings="?",skip=66637,nrow=2880, header= TRUE, col.names = colnames(read.table("household_power_consumption.txt",nrow = 1, header = TRUE, sep=";")))
# Date and time columns are joined to create one column "DateTime".
DateTime <- paste (data$Date, data$Time, sep=" ")
# DateTime converted to obtain days on x axis.
DateTime = as.POSIXlt(strptime(DateTime, "%d/%m/%Y %H:%M:%S"))
# Output figure to plot3.png file.
png(filename="C:/Users/Caroline/Education/R/Graphics/plot3.png", height=480, width=480, bg="transparent")
# Specifying margins and transparent background.
par(mar=c(5,4,4,2), bg=NA)
# Scatterplot of Sub_metering_1/_2/_3 data in terms of days.
with  (data,plot(DateTime,Sub_metering_1, type="l", ylab="Energy sub metering", xlab=""))
lines(DateTime,data$Sub_metering_2, type="l", col="red")
lines(DateTime,data$Sub_metering_3, type="l", col="blue")
# Legend for the scatterplot.
legend("topright", legend=names(data[7:9]), lty=1, col=c("black","red","blue"), bty="o", bg="transparent")
# Close plot3.png file.
dev.off()
