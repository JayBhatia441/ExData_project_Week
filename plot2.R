
power<-read.csv("household_power_consumption.txt",header=TRUE,sep=";",dec=".",stringsAsFactors = FALSE)
p<-power[power$Date=="1/2/2007",]
a<-power[power$Date=="2/2/2007",]
h<-rbind(p,a)
h$Date<-dmy(h$Date)
h$Global_active_power<-as.numeric(h$Global_active_power)
par(mfrow=c(1,1))
paste<-paste(h$Date,h$Time)
s<-strptime(paste,"%Y-%m-%d %H:%M:%S")
png(file="plot2.png")
with(h,plot(s,Global_active_power,type="l"))
dev.off()
  
  




