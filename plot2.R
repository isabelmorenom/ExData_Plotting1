###################################################################
#               MAIN SCRIPT PLOT 2
###################################################################

#load function getdata.R and get data

source ("getdata.R")

df<-getdata()

# Start the png device

png(filename = "plot2.png",width = 480, height = 480,  bg = "white")

# Generate graphic

Sys.setlocale(category = "LC_ALL", locale = "english")

plot(df$datetime, df$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)")

# Close the device

dev.off()