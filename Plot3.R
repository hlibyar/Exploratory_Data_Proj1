# set working directory (change this to fit your needs)
setwd('C:/Users/Hongmei/Desktop/R_coursera/Exploratory data')

# make sure the plots folder exists
if (!file.exists('plots')) {
        dir.create('plots')
}

# load data
source('C:/Users/Hongmei/Desktop/R_coursera/Exploratory data/load.data.R')

# open device
png(filename='plots/plot2.png',width=480,height=480,units='px')

# plot data
lncol<-c('black','red','blue')
lbls<-c('Sub_metering_1','Sub_metering_2','Sub_metering_3')
plot(power.consumption$DateTime,power.consumption$SubMetering1, type='l',col=lncol[1],ylab='Energy sub metering',xlab='')
lines(power.consumption$DateTime,power.consumption$SubMetering2,col=lncol[2])
lines(power.consumption$DateTime,power.consumption$SubMetering3,col=lncol[3])

# Turn off device
x<-dev.off()
