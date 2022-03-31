# Q1 
# Store the ufo data into a data frame called ufo_data.

# Reading csv file 
ufordata <- read.csv("ufo.csv", na = "")

# Show the structure of the UFO
str(ufodata)

# data frame as well as the first 15 rows of data within the data frame.
head(ufo_data, 15)

# Then count the number of rows within the UFO data frame to confirm 
# there are 89071 rows in it.
nrow(ufodata) 
ncol(ufodata)
# Q2  
# The datetime field is currently set as a chr variable and needs to be converted to a date
# variable. The current date structure is represented in mm/dd/yyyy format. Using the
# relevant R command, convert the datetime variable to a date variable, and prove that
# the date variable has been converted to a date variable.

ufodata$datetime <- as.Date(ufodata$datetime, "%m/%d/%Y") # why is the structure changing ?
str(ufodata)
# Q3
# Update the UFO data frame with the new date structure. And prove that the date
# structure has now changed to a date variable by displaying the new structure of the
# UFO data frame.
str(ufodata) 
str(ufodata$datetime)
# Q4
# The UFO data frame contains some headings that could cause future issues when
# referencing them
names(ufodata)
names(ufodata)[6]  <- "DurationinSeconds"
names(ufodata)[7]  <- "DurationinHrsMins"
names(ufodata)[9]  <- "DatePosted"
names(ufodata)
# Q5
# The latitude variable is incorrectly defined as a chr variable when it should be a
# numerical variable
ufodata$latitude <- as.integer(ufodata$latitude)
str(ufodata)
str(ufodata$latitude)
# Q6
# Installing a package
install.packages("mice")
library(mice)
# Using mice
md.pattern(ufodata) 

install.packages("VIM")
library(VIM)
ufo_missing_value <- aggr(ufodata, prop = TRUE,numbers = FALSE)
summary(ufo_missing_value)
# Q7
#na.omit(ufo_data)
#str(ufo_data)
#ufodata
#colSums(is.na(ufodata))
ufodata$X <- NULL
complete_df <- ufodata[complete.cases(ufodata), ]
install.packages("VIM")
library(VIM)
ufo_missing_value <- aggr(complete_df, prop = TRUE,numbers = FALSE)
summary(ufo_missing_value)
# Q8
# Sort the UFO data frame firstly by shape and then by city
attach(complete_df)
complete_df <- complete_df[order(shape),]
complete_df <- complete_df[order(city),]
complete_df
sorted_ufo_data <- subset(complete_df, select = c(datetime, city, country, shape))
head(sorted_ufo_data, 15)
detach(complete_df)
# Q9
ufo_gb_disk <- subset(complete_df,country=="gb"&shape == "disk")
nrow(ufo_gb_disk)

#10
# Using the write.csv() 
write.csv(ufo_data,file = "modified_ufo.csv")
write.csv(ufo_gb_disk,file = "ufo_gb.csv")
write.csv(sorted_ufo_data,file = "sorted_ufo.csv")