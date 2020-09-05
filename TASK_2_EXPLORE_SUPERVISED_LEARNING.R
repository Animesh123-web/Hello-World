#Lets look at our Dataset
library(readxl)
Study_Hours <- read_excel("Study_Hours.xlsx")
View(Study_Hours)
 
data.frame(Study_Hours)

#1 Scatterplot (Ordering)
plot(Study_Hours$Hours,Study_Hours$Scores,xlim = c(0,10),ylim = c(0,110),main = "Scatterplot",col='Blue')
#2 Correlation
cor(Study_Hours$Hours,Study_Hours$Scores)
#3 The model: Simple linear Regression
r<-lm(Study_Hours$Scores~Study_Hours$Hours)
r
#4 Add Regression line (Must run regression before this line)
abline(r)
summary(r)

#5 names to access regression object
names(r)
#6 Fitted values for XS, abd plot score vs hours
r$fitted.values
fitted(r)
plot(Study_Hours$Hours,r$fitted.values)
#7 Now I want Predictions for Certain X: What would be my score if the student studies for 9.25 hours
#8 Manually
2.4837+9.7758*9.25
#9 Use coefficient
coef(r)
coef(r)[1]
coef(r)[2]
2.4837+9.7758*9.25
#So if a student study fro 9.25 hours in a day, he/she may score '92.91 '
#Conclusion 