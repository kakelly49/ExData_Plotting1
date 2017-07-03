## This R program uses a subset of the text file "Electric power consumption", with 
## data only for 2007-02-01 and 2007-02-02. The subset is called 
## "household_power_consumption_Feb 1-2_2007.csv". The exploratory graph, plot1.png
## is a histogram showing Global minute-averaged active power (in Kilowatts) 

      
      epowerconsumption<-read.table("household_power_consumption_Feb 1-2_2007.csv",
           na.strings="?",
           sep=",",
           header=TRUE)

      png(filename="Plot1.png",width=480,height=480) ## device is png
      hist(epowerconsumption$Global_active_power,##plot is a histogram
          col="red",                             ## color is red
          xlab="Global Active Power (kilowatts)",## define x axis lable
          main="Global Active Power")            ## main heading


       dev.off()   ## close device
 
