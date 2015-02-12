#load the data
data(anscombe)
attach(anscombe)

#compute some basic statstics.  What do you see?

#mean
sapply(anscombe, mean, na.rm = TRUE)

#correlation of x and y
cor(x1, y1)
cor(x2, y2)
cor(x3, y3)
cor(x4, y4)

#summary of stats
summary(lm(y1 ~ x1)) #ordinary linear model. The argument to lm is a model formula, which has the response on the left of the tilde ~ (read "is modeled as") and a Wilkinson-Rogers model specification formula on the right
summary(lm(y2 ~ x2))
summary(lm(y3 ~ x3))
summary(lm(y4 ~ x4))

#Now let's plot some graphs.  In RStudio the graphs will "fit" in the window, you may need to resize

#first set our margins.
par(mar=c(2,2,2,2)) 

# We know we want to draw 4 graphs as we have 4 datasets
# Let's draw a 2 x 2 grid on one plot, after try changing this to 1,4 or 4,1
par(mfrow=c(2,2)) 

#plot dataset 1
par(col=("black"))
plot(x1, y1, xlim=c(3,19), ylim=c(3, 15))

#use the abline function to draw a straight line, in this using the intercept and slope from our linear model.
par(col=("red"))
abline(lm(y1 ~ x1))

#plot dataset 2
par(col=("black"))
plot(x2, y2, xlim=c(3,19), ylim=c(3, 15))
par(col=("red"))
abline(lm(y2 ~ x2))

#plot dataset 3
par(col=("black"))
plot(x3, y3, xlim=c(3,19), ylim=c(3, 15))
par(col=("red"))
abline(lm(y3 ~ x3))

#plot dataset 4
par(col=("black"))
plot(x4, y4, xlim=c(3,19), ylim=c(3, 15))
par(col=("red"))
abline(lm(y4 ~ x4))
