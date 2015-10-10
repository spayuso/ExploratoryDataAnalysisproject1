#Exploratory data Analysis Assignment 1
#Plot 3
#Sebastian Pajuelo

print("Reading proccess")
data<-read.table("/Users/Sebastian/Desktop/VARIOS/workspace/household_power_consumption.txt", header=T, sep=";", na.strings="?")
procData<-data[data$Date %in% c("1/2/2007","2/2/2007"),]

time<-strptime(paste(procData$Date, procData$Time, sep=""),"%d/%m/%Y %H:%M:%S")
procData<-cbind(time,procData)
colors<-c("black","red","blue")
nNames<-c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
png("plot3.png", widt=480, height=480)
plot(procData$time, procData$Sub_metering_1, type="l", col=colors[1],xlab="", ylab="Energy Sub Metering")
lines(procData$time, procData$Sub_metering_2, col=colors[2])
lines(procData$time, procData$Sub_metering_3, col=colors[3])
legend("topright", legend=nNames, col=colors, lty="solid")
dev.off()

