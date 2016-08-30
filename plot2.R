
data=read.table("household_power_consumption.txt",header=T,sep=';');
data$Date=as.Date(data$Date,format="%d/%m/%Y");
data=data[data$Date=='2007-02-01'|data$Date=='2007-02-02',];

data$Global_active_power=as.numeric(as.vector(data$Global_active_power));
plot(data$Global_active_power,type='l',xlab='',ylab='Global Active Power (kilowatts)',axe=F);
axis(1,at=c(1,1440,2880),labels=c('Thu','Fri','Sat'));
axis(2);
box();
dev.copy(png,file='plot2.png',width=480,height=480);
dev.off();
