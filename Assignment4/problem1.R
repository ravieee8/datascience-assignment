##Problem: Employees who have similar profiles
#i: By Euclidian distance
#ii.By min-max Transfermation
#iii. By Z-score Transfermation
library(caret)

empid = c(1,2,3,4,5,6)
salary = c(25000,40000,55000,27000,53000,26000)
age = c(24,27,32,25,30,35)
Experience = c(4,5,7,5,5,10)
empdata = data.frame(empid,salary,age,Experience)
class(empdata)
dim(empdata)
summary(empdata)
str(empdata)

empdist = dist(empdata[,-1])
which.min(empdist)
print("Empolyee 4 and 6 have similar profile by without normalization")

preobj = preProcess(empdata[,-1],method=c("range"))
rangedata = predict(preobj,empdata[,-1])
rangedata_dist = dist(rangedata)
which.min(rangedata_dist)
print("Empolyee 1 and 4 have similar profile by min-max normalization")

zpreobj = preProcess(empdata[,-1],method=c("center","scale"))
zdata = predict(zpreobj,empdata[,-1])
zdata_dist = dist(zdata)
which.min(zdata_dist)
print("Empolyee 1 and 4 have similar profile by z-score normalization")

