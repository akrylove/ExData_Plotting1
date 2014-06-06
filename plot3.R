plot3 <- function() {
  if (!exists("ds")) {
    source("analysis.R")  
  }
  
  g_range <- range(0,ds$Sub_metering_1, ds$Sub_metering_2, ds$Sub_metering_3)
  with(ds, plot(datetime, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering", ylim=g_range, yaxp=c(0,30,3)))
  lines(ds$datetime, ds$Sub_metering_2, type="l", col="Red", ylim=g_range)
  lines(ds$datetime, ds$Sub_metering_3, type="l", col="Blue", ylim=g_range)
  legend("topright", lty = 1, col = c("black", "red", "blue"), legend = colnames(ds)[7:9])  
}
png("plot3.png")
plot3()
dev.off()


