

rosA = c(2.3,2.5,1.9,2.4,2.1)
romI = c(1.3,5.0,0.8,1.9,1.1)
returns = data.frame(rosA,romI)
class(returns)
str(returns)
summary(returns)

covar = cov(returns$rosA,returns$romI)
corr = cor(returns$rosA,returns$romI)

if (covar > 0 ){
  if (corr >= 0.7) {
    print ("[INFO] :: Both 'stock A' and 'Market Index' are Very strong positive relationship" )
  } else if ( corr >= 0.4 & corr <= 0.69) {
    print ("[INFO] :: Both 'stock A' and 'Market Index' are strong positive relationship" )
  } else if (corr >= 0.3 & corr <= 0.39){
    print ("[INFO] :: Both 'stock A' and 'Market Index' are moderate positive relationship" )
  }else if (corr >= 0.2 & corr <= 0.29){
    print ("[INFO] :: Both 'stock A' and 'Market Index' are week positive relationship" )
  }else if (corr >= 0.01 & corr <= 0.19){
    print ("[INFO] :: Both 'stock A' and 'Market Index' are negligible relationship" )
  }
} else if (covar < 0){
  if (corr <= -0.7) {
    print ("[INFO] :: Both 'stock A' and 'Market Index' are Very strong negative relationship" )
  } else if ( corr <= -0.4 & corr >= -0.69) {
    print ("[INFO] :: Both 'stock A' and 'Market Index' are strong negative relationship" )
  } else if (corr <= -0.3 & corr >= -0.39){
    print ("[INFO] :: Both 'stock A' and 'Market Index' are moderate negative relationship" )
  }else if (corr <= -0.2 & corr >= -0.29){
    print ("[INFO] :: Both 'stock A' and 'Market Index' are week negative relationship" )
  }else if (corr <= -0.01 & corr >= -0.19){
    print ("[INFO] :: Both 'stock A' and 'Market Index' are negligible relationship" )
  }
} else {
  paste ("[INFO] :: Both 'stock A' and 'Market Index' are no relationship")
}

