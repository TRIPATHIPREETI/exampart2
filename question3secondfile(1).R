library(RCurl)
library(foreign)
library(reshape2)
fits <- getURL("https://raw.githubusercontent.com/jrwolf/IT497/master/fitstats.csv",header=TRUE)
fits

write.csv(fits, file = "fits.csv")

fits1<-read.csv(file="fits.csv",header=TRUE,skip=23)
fits1

library(ggplot2)
ggplot(fits1, aes(x=Steps, y=Miles)) +
  geom_point(shape=1)      # Use hollow circles

