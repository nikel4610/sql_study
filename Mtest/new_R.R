english = c(90, 80, 60, 70)
math = c(50, 60, 100, 20)
class = c(1, 1, 2, 2)

df_midterm = data.frame(english, math, class)
df_midterm

df_midterm$english

install.packages('readxl')
library(readxl)
df_exam = read_excel('D:/rproject/sql_study/Mtest/excel_exam.xlsx')
head(df_exam)
str(df_exam)

df_csv = read.csv('D:/rproject/sql_study/Mtest/csv_exam.csv', header = T)
df_csv
