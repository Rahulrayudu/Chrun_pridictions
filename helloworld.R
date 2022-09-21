library(ggplot2)



raw_data = read.csv('Churn_Modelling.csv')
n = dim(raw_data)[1]

df = data.frame(raw_data)

#Understanding the structure of data
str(df)
ggsave("helloworld.png", width = 8, height = 8)
