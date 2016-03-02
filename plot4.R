###################################################################
#               MAIN SCRIPT PLOT 4
###################################################################

#load function getdata.R and get data

source ("getdata.R")

df<-getdata()

# Start the png device

Sys.setlocale(category = "LC_ALL", locale = "english")


png(filename = "plot4.png",width = 480, height = 480,  bg = "white")

# Create a 2x2 split

par(mfrow=c(2,2))

# CREATE GRAPHICS

with(df,{
     plot(datetime, Global_active_power, #PLOT 1
          type="l",
          xlab="",
          ylab="Global Active Power (kilowatts)")
     plot(datetime, Voltage,            #PLOT 2
          type="l",
          xlab="datetime",
          ylab="Voltage")
     plot (datetime,                   #PLOT 3
           Sub_metering_1,
           type="l",
           col="black",
           xlab="", 
           ylab="Energy sub metering")
     lines(datetime, Sub_metering_2, col="red")
     lines(datetime, Sub_metering_3, col="blue")
     legend("topright",
       c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),
       lty=c(1,1,1),
       lwd=c(2.5,2.5,2.5),
       col=c("black","red","blue")) 
     plot(datetime, Global_reactive_power, #PLOT 4
           type="n",
           xlab="datetime",
           ylab="Global_reactive_power")
     lines(datetime, Global_reactive_power)
})

# Close the device

dev.off()
     
     
     