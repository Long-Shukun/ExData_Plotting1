
data=read.table("household_power_consumption.txt",header=T,sep=';');
data$Date=as.Date(data$Date,format="%d/%m/%Y");
data=data[data$Date=='2007-02-01'|data$Date=='2007-02-02',];

par(mfrow=c(2,2));

data$Global_active_power=as.numeric(as.vector(data$Global_active_power));
plot(data$Global_active_power,type='l',xlab='',ylab='Global Active Power',axe=F);
axis(1,at=c(1,1440,2880),labels=c('Thu','Fri','Sat'));
axis(2);
box();

data$Voltage=as.numeric(as.vector(data$Voltage));
plot(data$Voltage,type='l',xlab='datetime',ylab='Voltage',axe=F);
axis(1,at=c(1,1440,2880),labels=c('Thu','Fri','Sat'));
axis(2);
box();

data$Sub_metering_1=as.numeric(as.vector(data$Sub_metering_1));
data$Sub_metering_2=as.numeric(as.vector(data$Sub_metering_2));
data$Sub_metering_3=as.numeric(as.vector(data$Sub_metering_3));
plot(data$Sub_metering_1,type='l',xlab='',ylab='Energy sub metering',axe=F);
lines(data$Sub_metering_2,col='red');
lines(data$Sub_metering_3,col='blue');
axis(1,at=c(1,1440,2880),labels=c('Thu','Fri','Sat'));
axis(2);
box();
legend('topright',bty='n',cex=0.6,lty=1,col=c('black','red','blue'),legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'));

data$Global_reactive_power=as.numeric(as.vector(data$Global_reactive_power));
plot(data$Global_reactive_power,type='l',xlab='datetime',ylab='Global_reactive_power',axe=F);
axis(1,at=c(1,1440,2880),labels=c('Thu','Fri','Sat'));
axis(2);
box();

dev.copy(png,file='plot4.png',width=480,height=480);
dev.off();
