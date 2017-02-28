#Exploratory Data Analysis Assignment 1

#working data from plot1.R is used

#create a column for the combined date and time
workingdata$datetime <- strptime(paste(workingdata$Date, workingdata$Time, sep = " "), format = "%Y-%m-%d %H:%M:%S")

png(filename = "plot2.png", width = 480, height = 480) #open png device, set w x h in pixels (though 480 is typically default)
par(pty="s") #make plot square

#create line graph of the active power over time for the 2 days
plot(workingdata$datetime, workingdata$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)",
     xlab = "")

dev.off() #closes device