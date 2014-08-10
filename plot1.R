###
### to display the plot, call makePlot1()
###

makePlot1 <- function(writePNG = FALSE) {
  if (writePNG) png(filename='plot1.png', width=480, height=480)
  
  hist(f$Global_active_power,
       main='Global Active Power',  
       xlab = 'Global Active Power (kilowatts)',
       col="red")
  
  if (writePNG) dev.off()
}

# read in the data file
if (!exists('cachePowerConsumptionDataset') || !exists('f')) {
  # setwd("C:/Users/scott/datasciencecoursera/4.eda/proj1")
  print("reading data file -- this may take a few minutes...")
  f <- read.csv("household_power_consumption.txt", na.strings = "?", sep=";", colClasses = c('character', 'character' ,rep('numeric', 7)))
  
  # set the date/time format and add DateTime POSIXlt column to data frame
  ptfmt <- '%d/%m/%Y %H:%M:%S'
  f$DateTime <- strptime(paste(f$Date, f$Time), ptfmt)
  
  # subset on date range
  f <- f[f$DateTime >= as.POSIXlt("2007-02-01") & f$DateTime < as.POSIXlt("2007-02-03"),]
  
  cachePowerConsumptionDataset <- 1
}
