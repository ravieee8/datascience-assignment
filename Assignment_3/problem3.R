#Paul got a mark of 75 on a math test with a mean of 61 and a standard deviation of 12.
#He got 72 on a chemistry exam with mean 63 and standard deviation 7.
#If the marks on both tests were normally distributed, on which test did he do better relative to the class?

math_marks = 75
math_mean = 61
math_sd = 12

chemistry_marks = 72
chemistry_mean = 63
chemistry_sd = 7
zscore_math = (math_marks - math_mean)/math_sd
zscore_chemistry = (chemistry_marks - chemistry_mean)/chemistry_sd
if (zscore_math > zscore_chemistry){
  print ("[INFO]::Paul performed better in Math")
} else {
  print ("[INFO]::Paul performed better in chemistry")
}
