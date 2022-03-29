dose <- c(20, 30, 40, 45, 50)
drugA <- c(16, 20, 27, 40, 60)
drugB <- c(15, 18, 25, 31, 40)

drugs <- data.frame(dose, drugA, drugB)
drugs
plot(drugs)
attach(drugs)
plot(dose, type ="b", col="red")
detach(drugs)
plot(dose, drugA,  type ="o", col="green")
#save the settings to opar (kind of conf file for graph)
opar <- par(no.readonly = TRUE)
plot(dose, drugB,  type ="b", col="green")

par(lty = 2,pch = 17)
plot(dose, drugB,  type ="b", col="green")
#this resets to the earlier settings of the graph
par(opar) 
plot(dose, drugB,  type ="b", col="green")

plot(dose, drugA, type = "b", lty = 2, pch = 17)
#making the dotted lines wider 
plot(dose, drugB,  type ="b", col="green", lty = 3, lwd = 3, pch = 12)
#placing y limits
plot(drugB, 
     type ="b", 
     col="red", 
     lty = 2, 
     lwd = 3, 
     pch = 22, 
     ylim = c(0,30))
title(main = "Drug Dosage",
      col.main = "black",
      font.main = 4)
#setting up the range
graph_range <- range(0, drugA, drugB)
graph_range
plot(drugB, 
     type ="b", 
     col="red", 
     lty = 2, 
     lwd = 3, 
     pch = 22,
     #overwrites the labels 
     xaxt ='n', 
     yaxt ='n',
     ylim = c(0,graph_range[2]))
title(main = "Drug Dosage",
      col.main = "black",
      font.main = 4)
#labeling the axis with values 
axis(1,at = 1:5, lab = c("20ml", "40ml","60ml","80ml","100ml"))

axis(2, at = 5 * 0:graph_range[2])

#full example
plot(dose,
     drugA,
     type ="b", 
     col="red", 
     lty = 2, 
     lwd = 2, 
     pch = 2, main = "Clinical Trial for Drug A",
     sub = "this is hypothetical data",
     xlab = "DOSAGE",
     ylab = "DRUG RESPONSE",
     xlim = c(0,60),
     ylim = c(0,70))

opar <- par(no.readonly = TRUE)
par(mfrow = c(2,2))
attach(mtcars)
str(mtcars)
plot(wt, mpg, main = "scatterplot for wt vs mpg")
plot(wt ,disp, main = "scatterplot for wt vs displacement")
plot(wt, carb, main = "scatterplot for wt vs carb")
plot(wt, hp, main = "scatterplot for wt vs hp")
par(opar)
#
opar <- par(no.readonly = TRUE)
par(mfrow = c(3,1))
attach(mtcars)
plot(wt,
     mpg,
     main = "scatterplot for wt vs mpg",
     ylab = "Miles Per Gallon",
     xlab = "Weight",
     xlim = c(0, range(wt)[2]),
     ylim = c(0, range(mpg)[2]))
plot(wt,
     disp,
     main = "scatterplot for wt vs disp",
     ylab = "Displacement",
     xlab = "Weight",
     xlim = c(0, range(wt)[2]),
     ylim = c(0, range(disp)[2]))
plot(wt,
     mpg,
     main = "scatterplot for wt vs carb",
     xlab = "Carb",
     ylab = "Weight",
     xlim = c(0, range(wt)[2]),
     ylim = c(0, range(carb)[2]))
