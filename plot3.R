#Exploratory Data Analysis Assignment 1

#working data from plot1.R and plot2.R is used

png(filename = "plot3.png", width = 480, height = 480) #open png device, set w x h in pixels (though 480 is typically default)
par(pty="s") #make plot square

#create plot and add submetering 1 line (default is black so don't need to specify)
plot(workingdata$datetime, workingdata$Sub_metering_1, type = "l", ylab = "Energy sub metering",
     xlab = "")

#add submetering 2 line in red
lines(workingdata$datetime, workingdata$Sub_metering_2, col = "red")

#add submetering 2 line in blue
lines(workingdata$datetime, workingdata$Sub_metering_3, col = "blue")

#add the legend in the top right corner
legend("topright", lty = c(1,1,1), col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off() #closes device