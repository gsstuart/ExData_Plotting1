###
### to display the plot, call makePlot4()
###

makePlot4 <- function(writePNG = FALSE) {

# source plot1.R to read in the data file
source("plot1.R")

# source plot{2,3}.R to plot the first two, since they are variants of them
source("plot2.R")
source("plot3.R")

if (writePNG) png(filename='plot4.png', width=480, height=480)

par(mfcol=c(2,2))

# upper-left plot
makePlot2(FALSE, 'Global Active Power')

# lower-left plot
makePlot3(FALSE, 'n', 0.9)

# upper-right plot
plot(f$DateTime, f$Voltage, type='l', xlab='datetime', ylab='Voltage', yaxt = 'n')
yseq <- seq(from=234, to=246, by=2)
suppressWarnings(axis(side = 2, at=yseq, labels=yseq*c(1,NA)))

# lower-right plot
plot(f$DateTime, f$Global_reactive_power, type='l', lwd=1, ylab='Global_reactive_power', xlab='datetime')

if (writePNG) dev.off()

# reset mfcol
par(mfcol=c(1,1))

}

