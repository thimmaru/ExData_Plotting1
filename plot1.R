##Setting working directory
setwd("C:\\Users\\TRUDR\\OneDrive - Monsanto\\Migrated from My PC\\Desktop\\Data\\Ex._data\\Working_Data")
dataFile <- "./Data/household_power_consumption.txt"
##Read data file
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

##subSetData
globalActivePower <- as.numeric(subSetData$Global_active_power)

##Generate the plot
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()



