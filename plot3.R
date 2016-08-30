
data=read.table("household_power_consumption.txt",header=T,sep=';');
data$Date=as.Date(data$Date,format="%d/%m/%Y");
data=data[data$Date=='2007-02-01'|data$Date=='2007-02-02',];

data$Sub_metering_1=as.numeric(as.vector(data$Sub_metering_1));
data$Sub_metering_2=as.numeric(as.vector(data$Sub_metering_2));
data$Sub_metering_3=as.numeric(as.vector(data$Sub_metering_3));
plot(data$Sub_metering_1,type='l',xlab='',ylab='Energy sub metering',axe=F);
lines(data$Sub_metering_2,col='red');
lines(data$Sub_metering_3,col='blue');
axis(1,at=c(1,1440,2880),labels=c('Thu','Fri','Sat'));
axis(2);
box();
legend('topright',cex=0.7,lty=1,col=c('black','red','blue'),legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'));
dev.copy(png,file='plot3.png',width=480,height=480);
dev.off();

