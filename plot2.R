###
### to display the plot, call makePlot2()
###

makePlot2 <- function(writePNG = FALSE, ylab = 'Global Active Power (kilowatts)') {
  source("plot1.R")
  if (writePNG) png(filename='plot2.png', width=480, height=480)

  plot(f$DateTime, f$Global_active_power, type='l', xlab=NA, ylab=ylab)

  if (writePNG) dev.off()
}



