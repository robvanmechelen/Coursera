chicago = readRDS("chicago.rds")
names(chicago)
install.packages("dplyr")
library(dplyr)
#subset = select(chicago,city:date)
# head(subset)
?arrange
arrange(chicago,date)
year = as.POSIXlt(chicago$date)$year + 1900
chicago$year = as.factor(year)
str(chicago)
subset = chicago
subset$city = NULL
str(subset)
subset$year
table(subset$year)
colnames(subset)
subset$date = NULL
#subset = select(subset, year, tmpd, dptp)
#head(subset)
hist(subset$tmpd)
hist(subset$dptp)
boxplot(subset$tmpd ~ subset$year)
boxplot(subset$dptp ~ subset$year)
boxplot(subset$no2tmean2 ~ subset$year)
boxplot(subset$o3tmean2 ~ subset$year)
boxplot(subset$pm10tmean2 ~ subset$year)
boxplot(subset$pm25tmean2 ~ subset$year)
years = group_by(subset,year)
summarize(years, pm25 = mean(pm25tmean2, na.rm = TRUE), o3 = mean(o3tmean2, na.rm = TRUE), no2 = mean(no2tmean2, na.rm = TRUE)) 
x = runif(1,0,10)
x
if ( x >3) {
    y = 10
} else { y = 0 }
y 
rnorm(10)
runif(10)
rnorm(1)
f =gl(3,10)
f
f = gl(2, 8, labels = c("Control", "Treat"))
f
