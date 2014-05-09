COURSE PROJECT 1 - EXPLORATORY DATA ANALYSIS

SOURCE OF DATA

This project uses data from the UC Irvine Machine Learning Repository, specifically the �Individual household electric power consumption Data Set�. It contains the measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years.
Descriptions of the 9 variables in the dataset:
    Date: Date in format dd/mm/yyyy
    Time: time in format hh:mm:ss
    Global_active_power: household global minute-averaged active power (in kilowatt)
    Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
    Voltage: minute-averaged voltage (in volt)
    Global_intensity: household global minute-averaged current intensity (in ampere)
    Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
    Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
    Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.
Only the data from 01/02/2007 to 02/02/2007 was used.

PLOTS

Plots were created using the base plotting system in R code. The plots are saved in .png format.
1) Histogram of the gobal active power (plot1.png).
2) Scatterplot of the global active power versus the days (plot2.png).
3) Scatterplot of the sub metering 1, 2 and 3 versus the days (plot3.png).
4) Four plots: (a) Scatterplot of the global active power versus the days, (b) Scatterplot of the voltage versus the days, (c) Scatterplot of the sub metering 1, 2 and 3 versus the days, and (d) Scatterplot of the gobal reactive power versus the days (plot4.png).

R code

The corresponding R code to create each of the above plots is included, and named, respectively plot1.R, plot2.R, plot3.R and plot4.R.
