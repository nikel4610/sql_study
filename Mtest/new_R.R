english = c(90, 80, 60, 70)
math = c(50, 60, 100, 20)
class = c(1, 1, 2, 2)

df_midterm = data.frame(english, math, class)
df_midterm

df_midterm$english

# install.packages('readxl')
library(readxl)
library(dplyr)
df_exam = read_excel('D:/rproject/sql_study/Mtest/excel_exam.xlsx')
df_exam

df_exam %>% filter(class == 3)
df_exam %>% filter(class == 2 | class == 3)
df_exam %>% filter(class %in% c(1, 3, 5))

df_exam
df_exam %>% filter(math>=60)
df_exam
df_exam %>% select(english)
df_exam

# df_exam$total = (df_exam$math) + (df_exam$english) + (df_exam$science)
df_exam %>% mutate(hap = math + english + science, round(hap/3, 2))
df_exam

# 5행에서 7행만 표시
df_exam[c(5:7), ]
df_exam[5:7, ]

df_exam
df_exam[15:17, 4] #[행, 열]

df_exam$test = ifelse(df_exam$total > 200, '합격', '재시험')
df_exam

exam7 = read.csv('D:/rproject/sql_study/Mtest/csv_exam.csv', header = T)
head(exam7, 3)
tail(exam7, 3)
exam7[1:3, ]

exam7$total = exam7$english + exam7$math + exam7$science
exam7$test = ifelse(exam7$total>200, '합격', '재시험')
head(exam7)
table(exam7$test)

qplot(exam7$test)

west = as.data.frame(ggplot2::mpg)
