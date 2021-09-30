mydata= read.csv('C:\\Users\\Craig\\Documents\\BrunelOnedrive\\forestfires.csv' , sep=",")
plot(mydata)
plot(mydata$temp, mydata$wind)#You can also create scatterplots of 
#individual columns using the column name with a $ sign:
plot(mydata[,9], mydata[,11])#or refering to columns
hist(mydata$temp) # histograms
plot(mydata$temp, type="l") #this is a lower case L for line graph
plot(mydata$X, mydata$Y, col=mydata$temp) # plot with colours codes

meantemp = mean(mydata$temp) # 
write.csv(meantemp, file="output.csv")
plot(mydata$temp,mydata$ISI)
lmfire=line(mydata$ISI~mydata$temp)
abline(coef(lmfire))


((2020-2014)/(2014-1990))*100 # this is incorrect, it should be 10%
a = 5 # this is a scalar
b=c(3,4,5) #this is a vector, the c stands on concatenate
(3+4+5)/3 # to work out a mean of B
mean(x=b) # built in function to work out mean of b and put it in x
d=c(4,5,8,11) #makes a vector in d
sum(d) # sum of vector components
rnorm(10)
test = sum(d) #testing a few combinations seperately
rnorm(test)


