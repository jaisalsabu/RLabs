date_col <- c("10/15/18","01/11/18","10/21/18","10/28/18","05/01/18")
country_col <- c("US","US","IRL","IRL","IRL")
gender_col <- c("M","F","F","M","F")
age_col <- c(32,45,25,39,99)
q1_col <- c(5, 3, 3, 3, 2)
q2_col <- c(4, 5, 2, 3, 2)
q3_col <- c(5, 2, 5, 2, 1)
q4_col <- c(5, 5, 5, NA, 2)
q5_col <- c(5, 5, 2, NA, 1)

managers_data.df <- data.frame(date_col, 
                               country_col, 
                               gender_col, 
                               age_col, 
                               q1_col, 
                               q2_col, 
                               q3_col, 
                               q4_col, 
                               q5_col)
managers_data.df
str(managers_data.df)
column_names <-c("Dates", "Country", "Gender", "Age", "Q1", "Q2", "Q3", "Q4", "Q5")
colnames(managers_data.df) <- column_names
str(managers_data.df)
managers_data.df$Age[managers_data.df$Age == 99] <- NA 
head(managers_data.df)  
managers_data.df$age_class[managers_data.df$Age <= 25] <- "Young"
managers_data.df$age_class[managers_data.df$Age > 25 & managers_data.df$Age < 44] <- "Middle"
managers_data.df$age_class[managers_data.df$Age >= 44] <- "Elder"
managers_data.df$age_class[is.na(managers_data.df$age)] <- "Elder"

managers_data.df
str(managers_data.df)
summary(managers_data.df)
#here we will be re-coding the age_col ( making it ordinal and factored)
age_cate <- factor(managers_data.df$age_class, order=TRUE, levels = c("Young", "Middle", "Elder"))

#replace managers age_class with the new variable
managers_data.df$age_class <- age_cate
managers_data.df
str(managers_data.df)
head(managers_data.df)
#create a summary column with total of Q1,Q2,Q3,Q4,Q5 and a new ccolumn with all 
managers_data.df$mean_col <- rowMeans(managers_data.df[ , c(5,6,7,8,9)], na.rm=TRUE)
#anothermethod for mean
#managers_data.df$summary <- rowMeans(x=managers_data.df[5:9])
managers_data.df$summary_col <- managers_data.df$Q1 + managers_data.df$Q2 + managers_data.df$Q3 + managers_data.df$Q4 + managers_data.df$Q5
#another way for summary
#attach(managers_data.df)
#summary_col = Q1+Q2+Q3+Q4+Q5
#detach(managers_data.df)
managers_data.df
names(managers_data.df)[names(managers_data.df) == 'summary_col'] <- 'summary'
managers_data.df
names(managers_data.df)[names(managers_data.df) == 'mean_col'] <- 'mean'

#another way to do it
#names(managers)[11] <- "Summary"
#names(managers)[12] <- "Mean"
managers_data.df
managers_data.df$Date <- as.Date(managers_data.df$Dates, "%Y-%d-%m")
managers_data.df
managers_data.df$Dates
