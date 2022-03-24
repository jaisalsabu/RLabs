#loading managers data to studio 
managers_data <- read.csv("managers.csv", na = "")
managers_data
str(managers_data)
#dealing with missing data
#listwise deletion
managers_data$Q4 <- as.integer(managers_data$Q4)
managers_data$Q5 <- as.integer(managers_data$Q5)
managers_data
new_data <- na.omit(managers_data)
new_data
#complete cases
complete_data <- complete.cases(managers_data)
complete_data
sum(complete_data)
#listing rows where codatra is not missing
complete_data <- managers_data[complete.cases(managers_data),]
complete_data
str(complete_data)
#listing incomplete cases
complete_data <- managers_data[!complete.cases(managers_data),]
complete_data
managers_data$Age <- as.integer(managers_data$Age)

#finding the sum of missing age values
sum(is.na(managers_data$Age))
mean(is.na(managers_data$Age))
mean(is.na(managers_data))
install.packages("mice")
library(mice)

md.pattern(managers_data)
install.packages("VIM")
library(VIM)
missing_values <- aggr(managers_data, prop =FALSE, numbers= FALSE)
summary(missing_values)
