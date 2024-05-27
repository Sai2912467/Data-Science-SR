#Read csv file

df<- datasets::airquality

View(df)

head(df) # First 6 row starting
head(df,1) # First 1 row starting

tail(df) # default 6 row ending
tail(df,10)  # ending last 10 rows

#summary of the data###########
summary(df)
df$Month
df$Day
df$Temp
Temp
summary(df$Temp)
attach(df)
Temp
Month


## Data Visualization ###
plot(x = Wind, y = Temp)

plot(Ozone, Solar.R, xlab = 'Ozone level', ylab = 'solar', 
     main = 'Scatterplot Between Ozone vs Solar',
     col = 'green', pch =16
     )


#plot entire df
plot(df)

#horizontal bar plot
barplot(Month)
unique(Month)
table(Month)
frequency <- table(Month)
barplot(frequency)
barplot(table(Month), col ='green')


#Histogram
hist(Ozone)
summary(Ozone)
hist(Temp,col = 'cyan')

##single box plot and stats

boxplot(Ozone, col = '#e00720')

boxplot(df)

#Multiple graphs in one canvas

par(mfrow = c(2,2), mar = c(2,2,2,2) )


plot(Ozone, Temp,main = 'Scatterplot', pch = 19, col = 'red')
hist(Ozone, col = 'green' )
boxplot(Ozone,col= 'blue')
plot(Ozone,Solar.R, col='cyan')