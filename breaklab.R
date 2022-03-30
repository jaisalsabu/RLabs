#addition
5 + 9 
#assigning to a variable
x <- 5+3
#printing
print(x)
#creating vectors
z <- c(1, 1, 3, 4.56)
z
z <- c(z, 344, z)
z
z <- z * 2 + 100
z
#value of pi to 20
pi:20
15:1
#sequence of numbers
seq(1 , 20)
#sequence with interval
seq(0 , 10, 0.2)
#with limit of numbers
seq(5, 20, length= 30)
my_seq <- seq(5,10,length=30)
#calculate length of numbers
length(my_seq)
my_var <- c(0, 1, 3)
#repeating a vector for n times
rep(my_var , times=40)
#repeating each value in vector for n times
rep(my_var , each=40)
num_vect <- c(0.5, 55 , -10, 6)
#checking a relation condition in vector
tf <- num_vect < 1
tf 
rf <- num_vect>=6
rf
my_char <- c("My", "Name", "is")
my_char
#PASTE command to join character vectors
#collapse used to omit spaces here 
paste(my_char ,collapse = " ")
#adding a word to the joined character vector sentence 
my_char <- c(my_char,"jaisal")
my_char
paste(my_char ,collapse = " ")
