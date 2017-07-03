## This R program uses a subset of the text file "Electric power consumption", with 
## data only for 2007-02-01 and 2007-02-02. The subset is called 
## "household_power_consumption_Feb 1-2_2007.csv". The exploratory graph, plot2.png
## plots Global Active power consumption in Kilowatts over the time period

    epowerconsumption<-read.table("household_power_consumption_Feb 1-2_2007.csv",
            na.strings="?",
            sep=",",
            header=TRUE)
    png(filename="Plot2.png",width=480,height=480)## set up the png device


    plot(epowerconsumption$Global_active_power,
           xaxt="n", ## Do not plot the x axis
           type="l", ## This is a line graph0
           xlab="",  ## x axis label is null
           ylab="Global Active Power (kilowatts)") ## label the y axis

    axis(side=1,at=c(0,1500,2900),labels=c("Thu","Fri","Sat"))## specify labels for the y axis

    dev.off() ## release the device before ending the program

