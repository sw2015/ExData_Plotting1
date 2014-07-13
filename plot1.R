data <- read.table("/Datascience/household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", stringsAsFactors=FALSE)
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data <- data[(data$Date >= "2007-02-01" & data$Date < "2007-02-03"),]
hist(data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency")
dev.copy(png, file="plot1.png")
dev.off()