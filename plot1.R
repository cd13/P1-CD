# Set working directory.
setwd ("C:/Users/Caroline/Education/R/Graphics")
# Data file was first opened in Excel and only the data required for the assignment was read into r.
data <- read.table(file="household_power_consumption.txt",sep=";",dec=".",na.strings="?",skip=66637,nrow=2880, header= TRUE, col.names = colnames(read.table("household_power_consumption.txt",nrow = 1, header = TRUE, sep=";")))
# Output figure to plot1.png file.
png(filename="C:/Users/Caroline/Education/R/Graphics/plot1.png", height=480, width=480, bg="transparent")
# Specifying margins and transparent background.
par(mar=c(5,4,4,2), bg=NA)
# Histogram of global active power.
hist(data$Global_active_power, xlab="Global Active Power (kilowatts)", main ="Global Active Power", col="red")
# Close plot1.png file.
dev.off()
