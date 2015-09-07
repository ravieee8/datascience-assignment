##Problem # 2 :
# The average mark on a test was 58.3 with a standard deviation of 6.7. 
#The z-score of a particular mark was -1.3, what was the mark on test?

avg = 58.3
sd = 6.7
zscore = -1.3
x = (zscore * sd) + avg
paste ("[INFO] :: Marks on the test:",x)

#A teacher marks some exams and finds the mean is 54 and the standard deviation is 8. 
#The teacher then adjusts the marks by raising the mean to 60 and raising the standard deviation to 9. 
#The z-scores are kept constant. If the student scored 76% initially,what would be their new mark be?

old_marks = 76
old_mean = 54
old_sd = 8
new_mean = 60
new_sd = 9
#old_zscore = new_zscore
new_marks = ((old_marks - old_mean)/old_sd) * new_sd + new_mean
paste("[INFO] :: New marks is :",new_marks)
