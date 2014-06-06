plot1 <- function() {
  if (!exists("ds")) {
    source("analysis.R")  
  }
  hist(as.numeric(ds$Global_active_power), main="Overall Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")  
}
png("plot1.png")
plot1()
dev.off()