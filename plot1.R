###################################################################
#               MAIN SCRIPT PLOT 1
###################################################################

#load function getdata.R and get data.

source ("getdata.R")

df<-getdata()

# Start the png device

png(filename="plot1.png", height=480, width=480, bg="transparent")
              

# Plot the histogram

hist(df$Global_active_power,
     col="red",
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency")

# Close the device

dev.off()




