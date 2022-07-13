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

select(exam, english)
exam %>% filter(class == 1) %>% select(english)
exam %>% arrange(desc(math))
exam %>% mutate(total=math+english+science)

exam %>% mutate(total=math+english+science) %>% arrange(total)
exam %>% group_by(class)

# class 별로 분리
exam %>% group_by(class) %>% summarize(mean_math = mean(math),
                                       sum_math = sum(math),
                                       median_math = median(math),
                                       n = n())

# join
test1 = data.frame(id = c(1, 2, 3, 4, 5),
                   midterm = c(60, 73, 81, 90, 80))
test1

test2 = data.frame(id = c(1, 2, 3, 4, 5),
                   final = c(70, 50, 30, 20, 70))
test2

total = left_join(test1, test2, by='id')
total

