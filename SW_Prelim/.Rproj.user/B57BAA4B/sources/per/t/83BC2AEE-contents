z <- 12
class(z)
z <- c(12, FALSE)
class(z)
m <- c(10,13,15,33)
n <- c(13,22,88,110)
rbind(m,n)
z <- list(22,"a","c",FALSE)
z[[2]]
z <- 10:40
y <- 3
z + y
x <- c(117,114,14,15,113,112,110)
x[x>=101] <- 14
x
data <- read.table('C:/Users/RM A-225/Documents/Prelim/hw1_data.csv',header=TRUE,sep=",")
names(data)
head(data, 12)
nrow(data)
tail(data, 8)
head(data)
data[112,3]
data[42,4]
data[82,2]
sum(is.na(data[,1]))
sum(is.na(data[,2]))
sum(is.na(data[,3]))
sum(is.na(data[,4]))
mean(na.omit(data[,1]))
mean(na.omit(data[,2]))
mean(na.omit(data[,3]))
mean(na.omit(data[,4]))
solar <- subset(data, Temp>80 & Ozone>26, select=Solar.R)
apply(solar, 2, mean)
temp <- subset(data, Month==6|8, select=Temp)
apply(temp, 2, mean)
ozone2 <- subset(data, Month==5 & !is.na(Ozone), select=Ozone)
apply(ozone2, 2, max)