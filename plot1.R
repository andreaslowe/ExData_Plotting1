#Exploratory Data Analysis Assignment 1

#read data into r
mydata <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, na.strings = "?")

#convert Dates and subset from 2007-02-01 to 2007-02-02
mydata$Date <- as.Date(mydata$Date, format = "%d/%m/%Y")
workingdata <- subset(mydata, Date == "2007-02-01" | Date == "2007-02-02")

png(filename = "plot1.png", width = 480, height = 480) #open png device, set w x h in pixels (though 480 is typically default)
par(pty="s") #make plot square

#Create histogram of active power with red bars, adding in the x label and title, setting the breaks to 12, and 
hist(workingdata$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power", breaks = 12, ylim = c(0,1200))

dev.off() #closes device