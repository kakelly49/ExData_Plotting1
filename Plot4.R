## This R program uses a subset of the text file "Electric power consumption", with 
## data only for 2007-02-01 and 2007-02-02. The subset is called 
## "household_power_consumption_Feb 1-2_2007.csv". The exploratory graph, plot4.png
## shows multiple base plots in a single frame

    epowerconsumption<-read.table("household_power_consumption_Feb 1-2_2007.csv",
            na.strings="?",
            sep=",",
            header=TRUE)
    png(filename="Plot4.png",width=480,height=480)## set up the png device


 par(mfrow=c(2,2))
    
 with(epowerconsumption,    {
   plot(Global_active_power,
           xaxt="n", ## Do not plot the x axis
           type="l", ## This is a line graph0
           xlab="",  ## x axis label is null
           ylab="Global Active Power (kilowatts)") ## label the y axis

    axis(side=1,at=c(0,1500,2900),labels=c("Thu","Fri","Sat"))## specify labels for the y axis
    plot(epowerconsumption$Voltage,
           xaxt="n",  ## Do not plot x axis
           type="l",  ## line graph
           xlab="",ylab="Voltage") ## x axis label is null, define y axis label
        axis(side=1,at=c(0,1500,2900),labels=c("Thu","Fri","Sat")) ##create plot labels fr x axis
        mtext("datetime",side=1,line=3) ## Set text to be centred beneath the x axis plot labels
    plot(epowerconsumption$Sub_metering_2,
             yaxt="n", xaxt="n", ## do not plot x or y axes
             col="red",          ## plot is red
             type="l",           ## this is a line graph
             axes=FALSE,         ## 
             xlab="",ylab="",    ## x and y axes labels are null
             ylim=c(0,39))       ## define the range of the y axis
       
        par(new=TRUE) ## the next plot appears in the same window as the previous plot
        
       ## plot sub-metering of an air conditioner and an electric water heater
     plot(epowerconsumption$Sub_metering_3,
             yaxt="n",xaxt="n",     ## do not plot x or y axes
             col="blue",            ## plot lines are blue
             type="l",              ## this is a line graph
             axes=FALSE,            ##
             xlab="",ylab="",       ## x an y axes lables are null
             ylim=c(0,39))          ## define range of y axis to be equal to range of previous plot

        par(new=TRUE) ## the next plot appears in the same window as the previous 2 plots

        plot(epowerconsumption$Sub_metering_1,
             yaxt="n",xaxt="n", ## do not plot x and y axes
             xlab="",ylab="Energy sub metering", ## Define label of x axis (null) and y axis
             col="black",                        ## color is balck
             type="l",                           ## this is a line graph
             ylim=c(0,39))                       ## define the range of the y axis to be the same as the previous 2 graphs
        
        axis(side=1,at=c(0,1500,2900),labels=c("Thu","Fri","Sat")) ## define x axis values
        axis(side=2,at=c(0,10,20,30),labels=c("0","10","20","30")) ## define y axis values

        ## Create legendin upper right corner
        legend("topright", lty=1, col = c("black","red","blue"), 
             legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
        plot(epowerconsumption$Global_reactive_power,
            xaxt="n",## do not plot x axis
            type="l",## this is a line graph
            xlab="",ylab="Global_reactive_power")## x axis label is null,define y axis label

        axis(side=1,at=c(0,1500,2900),labels=c("Thu","Fri","Sat")) ## Define plot labels
        mtext("datetime",side=1,line=3) ## Sdd text to be centred beneath the x axis plot

})
    dev.off() ## release the device before ending the program

