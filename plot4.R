#Exploratory data Analysis Assignment 1
#Plot 4
#Sebastian Pajuelo

print("Reading proccess")
data<-read.table("/Users/Sebastian/Desktop/VARIOS/workspace/household_power_consumption.txt", header=T, sep=";", na.strings="?")
procData<-data[data$Date %in% c("1/2/2007","2/2/2007"),]

time<-strptime(paste(procData$Date, procData$Time, sep=""),"%d/%m/%Y %H:%M:%S")
procData<-cbind(time,procData)

nNames<-c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
colors<-c("black","red","blue")
png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))
#png("plot4.png", width=480, height=480) if plot here, only show 4th plot not all#
plot(procData$time, procData$Global_active_power, type="l", col="green", xlab="", ylab="Global_active_power")
plot(procData$time, procData$Voltage, type="l", col="orange", xlab="datetime", ylab="Voltage")
plot(procData$time, procData$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(procData$time, procData$Sub_metering_2, type="l", col="red")
lines(procData$time, procData$Sub_metering_3, type="l", col="blue")
legend("topright", bty="n", legend=nNames, lty=1, col=colors)
plot(procData$time, procData$Global_reactive_power, type="l", col="blue", xlab="datetime", ylab="Global_reactive_power")
dev.off()
