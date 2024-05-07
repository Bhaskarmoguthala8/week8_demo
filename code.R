var=lm(weight~height, data=women)
summary(var)
nrow(women)
a=cars
str(cars)
var1=lm(dist~speed, data=cars)
var1
summary(var1)

windows(20,12)
scatter.smooth(x=cars$speed, y=cars$dist, main="dist~speed")
windows(20,12)
boxplot(x=cars$speed, main="car ~ speed")
boxplot(y=cars$dist, main="car ~ speed")
 

windows(20,12)
par(mfrow=c(1,2))
plot(density(cars$speed),main="Density plot: Speed", ylab="Frequency")
polygon(density(cars$speed),col="blue")

plot(density(cars$dist),main="Density plot: dist", ylab="Frequency")
polygon(density(cars$dist),col="red")
cor(cars$speed, cars$dist)
cor(cars)
attach(cars)
linearmod=lm(dist~speed)
linearmod
AIC(linearmod)
BIC(linearmod)