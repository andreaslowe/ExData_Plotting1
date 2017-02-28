#Exploratory Data Analysis Assignment 1

#working data from plot1.R and plot2.R is used
png(filename = "plot4.png", width = 480, height = 480) #open png device, set w x h in pixels (though 480 is typically default)
par(mfrow = c(2,2))

#graph1: create line graph of the active power over time for the 2 days
plot(workingdata$datetime, workingdata$Global_active_power, type = "l", ylab = "Global Active Power",
     xlab = "")

#graph2: create line graph of the voltage over time for the 2 days
plot(workingdata$datetime, workingdata$Voltage, type = "l", ylab = "Voltage",
     xlab = "datetime")

#graph3: create plot and add submetering 1 line (default is black so don't need to specify)
plot(workingdata$datetime, workingdata$Sub_metering_1, type = "l", ylab = "Energy sub metering",
     xlab = "")

#add submetering 2 line in red
lines(workingdata$datetime, workingdata$Sub_metering_2, col = "red")

#add submetering 2 line in blue
lines(workingdata$datetime, workingdata$Sub_metering_3, col = "blue")

#add the legend in the top right corner, remove border around legend
legend("topright", lty = c(1,1,1), col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), bty = "n")

#graph4: create line graph of the reactive power over time for the 2 days
plot(workingdata$datetime, workingdata$Global_reactive_power, type = "l", ylab = "Global Reactive Power",
     xlab = "datetime")

dev.off() #closes device