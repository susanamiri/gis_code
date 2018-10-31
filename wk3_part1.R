getwd()
A <- 1
B <- 2
C <- A+B
a <- 3
b <- 2
c <- a+b
rm(a,b,c)
a = 2
b = 3
c = a+b
rm(a,b,c)
ls()
rm(A)
ls()
Data1 <- c(1:100)
Data2 <- c(101:200)
plot(Data1, Data2, col="red")
Data3 <- rnorm(100, mean =53, sd=34)
Data4 <- rnorm(100, mean =64, sd=14)
plot(Data3, Data4, col="blue")
?plot
df <- data.frame(Data1, Data2)
plot(df, col="green")
head(df)
tail(df)
data.frame[row,column]
df[1:10, 1]
df[5:15,]
df[c(2,3,6),2]
df[,1]
colnames(df) <- c("column1", "column2")
df$column1
df[["column1"]]
install.packages("tidyverse")
library(tidyverse)
LondonData <- read_csv("https://files.datapress.com/london/dataset/ward-profiles-and-atlas/2015-09-24T14:21:24/ward-profiles-excel-version.csv", na = "n/a")
class(LondonData)
class(LondonDataOSK)
datatypelist <- data.frame(cbind(lapply(LondonData,class)))
LondonData <- read_csv("https://files.datapress.com/london/dataset/ward-profiles-and-atlas/2015-09-24T14:21:24/ward-profiles-excel-version.csv")
datatypelist <- data.frame(cbind(lapply(LondonData,class)))
LondonData <- edit(LondonData)
summary(df)
names(LondonData)
LondonBoroughs <-LondonData[626:658,]
LondonData <- data.frame(LondonData)
LondonBoroughs <- LondonData[grep("^E09",LondonData[,3]),]
head(LondonBoroughs)
LondonBoroughs <- LondonBoroughs[2:34,]
LondonBoroughs<-LondonBoroughs[,c(1,19,20,21)]
names(LondonBoroughs)[1] <- c("Borough Name")
plot(LondonBoroughs$Male.life.expectancy..2009.13, LondonBoroughs$X..children.in.reception.year.who.are.obese...2011.12.to.2013.14)
install.packages("plotly")
library(plotly)
plot_ly(LondonBoroughs, x = ~Male.life.expectancy..2009.13, y = ~X..children.in.reception.year.who.are.obese...2011.12.to.2013.14, text = ~LondonBoroughs$`Borough Name`, type = "scatter", mode = "markers")
