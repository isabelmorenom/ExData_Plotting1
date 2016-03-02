######################################################################
#                   GETDATA FUNCTION
#
# This function obtain data from internet and choose two days
# of February 2007
######################################################################

getdata<-function (){
  
  path<-getwd()
  
  #Get data
  
  if (!file.exists("household_power_consumption.txt")){
    
    url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    f <- "Dataset.zip"
    
    download.file(url, file.path(path, f))
    
    #Unzip file
    
    executable <-file.path("C:/Program Files/WinRAR/WinRaR.exe")
    parameter <- "x"
    cmd <- paste(paste0("\"", executable, "\""), parameter, paste0("\"", file.path(path, 
                                                                                   f), "\""))
    system(cmd)
  }
  
  # Read the file
  
  data<-read.csv("household_power_consumption.txt",
                 sep=";",
                 colClasses=c(rep("character",2),rep("numeric",7)),
                 na.strings="?")
  
  # Obtain two days 2007-02-01 and 2007-02-02
  
  data<-data[(data$Date=="1/2/2007") | (data$Date=="2/2/2007"),]
  
  # Convert date and Time in Datetime
  
  data$datetime <- strptime(paste(data$Date,data$Time),
                            format="%d/%m/%Y %H:%M:%S")
  
  #Return Data 
  
  return(data)
  
} # END OF FUNCTION
