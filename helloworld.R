library(ggplot2)



raw_data = read.csv('Churn_Modelling.csv')
n = dim(raw_data)[1]

df = data.frame(raw_data)

#Understanding the structure of data
str(df)

#Checking if there are any null value in the dataframe
sapply(df,function(df) sum(is.na(df)))

##unique(df$CustomerId)
#Checking Unique value counts in each columns
sapply(df, n_distinct)

#Exploring unique values for few variables
unique(df$NumOfProducts)
unique(df$HasCrCard)
unique(df$IsActiveMember)
unique(df$Exited)

## To make data frames easily readable we have 
## removed unnecessary data fields
df = subset(raw_data, select = -c(RowNumber,CustomerId,Surname))
df = data.frame(df)

df$Exited = as.character(df$Exited)

#Plotting Histograms to understand the distributions
par(mfrow = c(1, 2))

hist(df$CreditScore)
hist(df$Age)
hist(df$Tenure, breaks = 5)
hist(df$Balance, breaks = 10)
hist(df$EstimatedSalary)
ggsave("helloworld.png", width = 8, height = 8)
