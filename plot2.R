plot2 <- function() {
  if (!exists("ds")) {
    source("analysis.R")  
  }
  
  with(ds, plot(datetime, Global_active_power, type="l", xlab="", ylab="Global active power (kilowatts)"))  
}
png("plot2.png")
plot2()
dev.off()