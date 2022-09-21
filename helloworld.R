library(ggplot2)



raw_data = read.csv('Churn_Modelling.csv')
n = dim(raw_data)[1]

df = data.frame(raw_data)

#Understanding the structure of data
str(df)
par(mfrow = c(1, 2))

hist(df$CreditScore)
ggsave("helloworld.png", width = 8, height = 8)
