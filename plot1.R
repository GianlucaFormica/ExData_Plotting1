## Code below requires that household_power_consumption.txt is in the working directory
system.time ( hpc <- read.csv.sql(file = "household_power_consumption.txt", sql = "select * from file where Date in ('1/2/2007', '2/2/2007')", header = TRUE, sep = ";") )
datetime<-as.POSIXct(paste(hpc$Date, hpc$Time), format="%d/%m/%Y %H:%M:%S")
par(mfrow = c(1, 1))

##This is the plot1 code
hist(hpc$Global_active_power, 
     main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", 
     col="red")
