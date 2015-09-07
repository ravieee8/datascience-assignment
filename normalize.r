library(caret)

age = c(25,30,35,40,45,50,55,60,65,70)
sal = c(15000,30000,45000,60000,75000,90000,105000,120000,135000,150000)
sal1 = c(15000,30000,45000,60000,75000,90000,119000,120000,135000,150000)

df = data.frame(age,sal,sal1)

normalize_minmax = function (x) {
  (x - min(x))/(max(x)-min(x))  
}

normalize_zscore = function(x) {
    (x - mean(x))/sd(x)
}

#normalize_minmax(df$age)
#normalize_minmax(df$sal)
#normalize_zscore(df$age)
#normalize_zscore(df$sal)

df1 = as.data.frame(apply(df,2,normalize_minmax))
df2 = as.data.frame(apply(df,2,normalize_zscore))


