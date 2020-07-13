power<-read.csv("household_power_consumption.txt",header=TRUE,sep=";",dec=".",stringsAsFactors = FALSE)
p<-power[power$Date=="1/2/2007",]
a<-power[power$Date=="2/2/2007",]
h<-rbind(p,a)
h$Date<-as.Date(h$Date)
h$Global_active_power<-as.numeric(h$Global_active_power)
par(mfrow=c(1,1))
png(file="plot1.png")
hist(h$Global_active_power,col="red",xlab="Global_active_power(kilowatts)",main = "Global_active_power")
dev.off()