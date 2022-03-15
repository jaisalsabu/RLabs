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

managers_data.df
score_col <- rowMeans(managers_data.df[ , c[Q1, Q2, Q3, Q4, Q5]], na.rm = TRUE)

new <- rowMeans(managers_data.df[ , c(5,6,7,8)], na.rm=TRUE)
new

                      