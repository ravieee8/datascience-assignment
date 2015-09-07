
#Problem1: 
#I : A teacher adjusts the marks of an examination by raising each score by 5 percent. 
#What happens to mean and standard deviation?

v1  = c(50,59,68,71,73,77,80)
##Both mean and sd varying
#v2 = v1 + 0.05 * v1  
##Only Mean varying
v2 = v1 + 5
mean_v1 = mean(v1)
mean_v2 = mean(v2)
sd_v1 = sd(v1)
sd_v2 = sd(v2)

if(mean_v1 == mean_v2){
  print("[INFO]:: MEAN not effected")
  
} else {
    print ("[INFO]::MEAN effected")
}

if (sd_v1 == sd_v2){
  print ("[INFO]:: SD not effected")
} else {
    print ("[INFO]:: SD effected")
}

##Problem1:II

v = c(92,93,92,94,92,91,92)
hist(v,col ="lightblue")
mean_v = mean(v)
sd_v = sd(v)

##Problem:III

A = c(rep(2.5,times=20),rep(7.5,times=20),rep(12.5,times=20),rep(17.5,times=20),rep(22.5,times=20))
B = c(rep(2.5,times=10),rep(7.5,times=20),rep(12.5,times=40),rep(17.5,times=20),rep(22.5,times=10))
C = c(rep(2.5,times=5),rep(7.5,times=25),rep(12.5,times=40),rep(17.5,times=25),rep(22.5,times=5))
D = c(rep(2.5,times=30),rep(7.5,times=15),rep(12.5,times=10),rep(17.5,times=15),rep(22.5,times=30))
#hist(A,col="lightblue")
#hist(B,col="lightblue")
#hist(C,col="lightblue")
#hist(D,col="lightblue")
meanVect = c(mean(A),mean(B),mean(C),mean(D))
sdVect = c(sd(A),sd(B),sd(C),sd(D))
minsd = min(sdVect)
maxsd = max(sdVect)
if ( minsd == sdVect[1]){
    paste ("Data set A has minimum sd:",minsd)
} else if (minsd == sdVect[2]) {
  paste ("Data set B has minimum sd:",minsd)
} else if (minsd == sdVect[3]) {
  paste ("Data set C has minimum sd:",minsd)
} else if (minsd == sdVect[4]) {
  paste ("Data set D has minimum sd:",minsd)
}

if ( maxsd == sdVect[1]){
  paste ("Data set A has maximum sd:",maxsd)
} else if (maxsd == sdVect[2]) {
  paste ("Data set B has maximum sd:",maxsd)
} else if (maxsd == sdVect[3]) {
  paste ("Data set C has maximum sd:",maxsd)
} else if (maxsd == sdVect[4]) {
  paste ("Data set D has maximum sd:",maxsd)
}

##Problem : IV
#If a set of data has a standard deviation of 0, then: 
#A. the mean of the data must be 0
#B. all of the data values are the same
#C. the data values collected had a sum of 0
#D. the z-score of the mean of the data is equal to 1
##Ans : B
