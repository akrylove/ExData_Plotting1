file <- "household_power_consumption.txt"
data <- read.table(file, header=TRUE, sep=";")
ds <- data[(as.Date(strptime(data$Date, "%d/%m/%Y")) == as.Date("2007-02-01")) | (as.Date(strptime(data$Date, "%d/%m/%Y")) == as.Date("2007-02-02")),]
ds$Date <- as.Date(strptime(ds$Date, "%d/%m/%Y"))
ds$Global_active_power <- as.numeric(as.vector(ds$Global_active_power))
ds$Global_reactive_power <- as.numeric(as.vector(ds$Global_reactive_power))
ds$Voltage <- as.numeric(as.vector(ds$Voltage))
ds$datetime <- paste(ds$Date, ds$Time)
ds$datetime <- as.POSIXlt(ds$datetime)
ds_exists <- TRUE