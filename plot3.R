power<-read.csv("household_power_consumption.txt",header=TRUE,sep=";",dec=".",stringsAsFactors = FALSE)
p<-power[power$Date=="1/2/2007",]
a<-power[power$Date=="2/2/2007",]
h<-rbind(p,a)
h$Date<-dmy(h$Date)
h$Global_active_power<-as.numeric(h$Global_active_power)
par(mfrow=c(1,1))
png(file="plot3.png")
with(h,plot(s,Sub_metering_1,ylab="Energy SubMetering",type = "l"))
lines(s,h$Sub_metering_2,col="red")
lines(s,h$Sub_metering_3,col="blue")
legend("topright",pch="_____",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()