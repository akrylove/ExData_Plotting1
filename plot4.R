source("plot2.R")
source("plot3.R")
png("plot4.png")
par(mfrow=c(2,2))

with(ds, {
  plot2()
  plot(datetime, Voltage, type="l")    
  plot3()
  plot(datetime, Global_reactive_power, type="l")
})
dev.off()
