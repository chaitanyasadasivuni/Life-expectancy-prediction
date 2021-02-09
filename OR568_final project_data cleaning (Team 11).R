#------------------------------------------Data loading-----------------------------------------------------
lifedata=read.csv(file.choose())
lifedata
#------------------------------------------For dimensions---------------------------------------------------
dim(lifedata)
colnames(lifedata)

#------------------------------------------For NA values ----------------------------------------------------
is.na(lifedata)
sum(is.na(lifedata)) 
#------------------------------------------For columns with NA values-----------------------------------------
colnames(lifedata)[apply(lifedata,2,anyNA)] #3

#------------------------------------------Replacing NA values with mean------------------------------------------
library(dplyr)
life=lifedata %>% mutate_all(~ifelse(is.na(.x),mean(.x,na.rm=TRUE),.x))
sum(is.na(life))     

#------------------------------------------Exporting the file------------------------------------------------------------------------------------
write.csv(life,"~/Desktop/Fall 2020/SYST568/Final project/lifeexpectancy.csv",row.names = TRUE)

#------------------------------------------skewness function to check the normal distribution of data------------------------------------------
install.packages("e1071")
library(e1071)
skewness(life$Year)
skewness(life$Life.expectancy)
skewness(life$Adult.Mortality)
skewness(life$infant.deaths)
skewness(life$Alcohol)
skewness(life$percentage.expenditure)
skewness(life$Hepatitis.B)
skewness(life$Measles)
skewness(life$BMI)
skewness(life$under.five.deaths)
skewness(life$Polio)
skewness(life$Total.expenditure)
skewness(life$Diphtheria)
skewness(life$HIV.AIDS)
skewness(life$GDP)
skewness(life$Population)
skewness(life$thinness..1.19.years)
skewness(life$thinness.5.9.years)
skewness(life$Income.composition.of.resources)
skewness(life$Schooling)

#------------------------------------------kurtosis function to check normal distribution of data------------------------------------------
kurtosis(life$Year)
kurtosis(life$Life.expectancy)
kurtosis(life$Adult.Mortality)
kurtosis(life$infant.deaths)
kurtosis(life$Alcohol)
kurtosis(life$percentage.expenditure)
kurtosis(life$Hepatitis.B)
kurtosis(life$Measles)
kurtosis(life$BMI)
kurtosis(life$under.five.deaths)
kurtosis(life$Polio)
kurtosis(life$Total.expenditure)
kurtosis(life$Diphtheria)
kurtosis(life$HIV.AIDS)
kurtosis(life$GDP)
kurtosis(life$Population)
kurtosis(life$thinness..1.19.years)
kurtosis(life$thinness.5.9.years)
kurtosis(life$Income.composition.of.resources)
kurtosis(life$Schooling)
