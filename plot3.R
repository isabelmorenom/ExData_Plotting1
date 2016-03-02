###################################################################
#               MAIN SCRIPT PLOT 3
###################################################################

#load function getdata.R and get data

source ("getdata.R")

df<-getdata()

# Start the png device

png(filename = "plot3.png",width = 480, height = 480,  bg = "white")

# Generate graphic

Sys.setlocale(category = "LC_ALL", locale = "english")

with(df, {
    plot (datetime,
           Sub_metering_1,
           type="l",
           col="black",
           xlab="", 
           ylab="Energy sub metering")
    lines(datetime, Sub_metering_2, col="red")
    lines(datetime, Sub_metering_3, col="blue")
})

legend("topright",
       c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),
       lty=c(1,1,1),
       lwd=c(2.5,2.5,2.5),
       col=c("black","red","blue"))

# Close the device

dev.off()