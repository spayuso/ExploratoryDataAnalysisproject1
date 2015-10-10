#Exploratory data Analysis Assignment 1
#Plot 2
#Sebastian Pajuelo

print("Reading proccess")
data<-read.table("/Users/Sebastian/Desktop/VARIOS/workspace/household_power_consumption.txt", header=T, sep=";", na.strings="?")
procData<-data[data$Date %in% c("1/2/2007","2/2/2007"),]

time<-strptime(paste(procData$Date, procData$Time, sep=""),"%d/%m/%Y %H:%M:%S")
procData<-cbind(time,procData)
png("plot2.png",width=480, height=480)
plot(procData$time, procData$Global_active_power, type="l", col="blue", xlab="", ylab="Global Active Power(kW)")
dev.off()

