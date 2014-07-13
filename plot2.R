data <- read.table("/Datascience/household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", stringsAsFactors=FALSE)
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data <- data[(data$Date >= "2007-02-01" & data$Date < "2007-02-03"),]
DateTime <- paste(as.Date(data$Date), data$Time)
data$DateTime <- as.POSIXct(DateTime)
plot(data$Global_active_power~data$DateTime, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.copy(png, file="plot2.png")
dev.off()