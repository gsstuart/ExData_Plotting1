###
### to display the plot, call makePlot3()
###

makePlot3 <- function(writePNG = FALSE, legendBty = 'o', legendCex = 1) {
  # source plot1.R to read in the data file
  source("plot1.R")

  if (writePNG) png(filename='plot3.png', width=480, height=480)

  plot(f$DateTime, f$Sub_metering_3, type='l', col='blue', ylim = c(0,40), yaxt = 'n', ylab='Energy sub metering', xlab=NA)
  axis(side=2, at=c(0,10,20,30))
  par(new=1)
  plot(f$DateTime, f$Sub_metering_2, type='l', col='red', ylim=c(0,40), axes=0, xlab=NA, ylab=NA)
  par(new=1)
  plot(f$DateTime, f$Sub_metering_1, type='l', ylim=c(0,40), axes=0, xlab=NA, ylab=NA)
  legend('topright', paste0('Sub_metering_',1:3), col=c('black','red','blue'), lty=1, bty=legendBty, cex=legendCex)

  if (writePNG) dev.off()
}
