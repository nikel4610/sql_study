Sys.time() # "2022-07-13 14:09:39 KST"
Sys.Date() # "2022-07-13"

# 키보드 입력
data = scan()
data
sum(data)
mean(data)

library(ggplot2)
mpg = data.frame(ggplot2::mpg)
mpg
qplot(data=mpg, x=drv, y=hwy, geom='boxplot', colour=drv)

exam = read.csv("D:/rproject/sql_study/Mtest/examples/csv_exam.csv")
head(exam)
str(exam)
save(exam, file='my_exam.rda') # 문서 보호
load("my_exam.rda")

library(dplyr)
head(mpg)
mpg = rename(mpt, company = manufacturer)
mpg$total = mpg$cty + mpg$hwy
head(mpg)

hist(mpg$total)
mpg

mpg$test = ifelse(mpg$total>=40, 'pass', 'fail')
mpg

table(mpg$test)
qplot(mpg$test)

x = c('a', 'b', 'c', 'a', 'c')
x
qplot(x)

# 둘다 같다
filter(exam, class == 1 | class == 5)
a = exam %>% filter(class == 1 | class == 5) 
mean(a$math)
