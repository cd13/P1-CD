# Set working directory.
setwd ("C:/Users/Caroline/Education/R/Graphics")
# Data file was first opened in Excel and only the data required for the assignment was read into r.
data <- read.table(file="household_power_consumption.txt",sep=";",dec=".",na.strings="?",skip=66637,nrow=2880, header= TRUE, col.names = colnames(read.table("household_power_consumption.txt",nrow = 1, header = TRUE, sep=";")))
# Date and time columns are joined to create one column "DateTime".
DateTime <- paste (data$Date, data$Time, sep=" ")
# DateTime converted to obtain days on x axis.
DateTime = as.POSIXlt(strptime(DateTime, "%d/%m/%Y %H:%M:%S"))
# Output figure to plot2.png file.
png(filename="C:/Users/Caroline/Education/R/Graphics/plot2.png", height=480, width=480, bg="transparent")
# Specifying margins and transparent background.
par(mar=c(5,4,4,2), bg=NA)
# Scatterplot of Global active power in terms of days.
with  (data,plot(DateTime,Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab=""))
# Close plot2.png file.
dev.off()
