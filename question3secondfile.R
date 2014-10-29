library(RCurl)
library(foreign)
library(reshape2)
fits <- getURL("https://raw.githubusercontent.com/jrwolf/IT497/master/fitstats.csv",header=TRUE)
fits

write.csv(fits, file = "fits.csv")

fits1<-read.csv(file="fits.csv",header=TRUE,skip=23)
fits1

mileswalked = fits1$ Miles
stepswalked= fits1$Steps

# plot2
plot(stepswalked,mileswalked,ylim=c(0,15),xlab="steps walked",ylab="miles walked")

