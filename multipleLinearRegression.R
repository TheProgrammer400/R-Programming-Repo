Y = c(110,80,70,120,150,90,70,120)

X1 = c(30,40,20,50,60,40,20,60)

X2=c(11,10,7,15,19,12,8,14)

# linear regression model between Y, X1, X2
# here, Y is dependent and X1 and X2 are independent variables

RegModel = lm(Y~X1+X2)
RegModel

# using scatterplot3d library, plot following:
library(scatterplot3d)
graph = scatterplot3d(X1, X2, Y) # x, y, z axis 
graph$plane3d(RegModel)
