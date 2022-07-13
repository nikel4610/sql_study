#2022-07-12

#ggplot 패키지 설치

# installed.packages() -> 인스톨한 패키지 확인
# install.packages('ggplot2') -> 패키지 설치
library(ggplot2)
x = c('a', 'b' ,'a', 'c', 'c')
x
qplot(x)

# as 생략 가능 
mpg = as.data.frame(ggplot2::mpg)
mpg
head(mpg)
tail(mpg)
View(mpg)
str(mpg)
head(mpg, 10)

mpg$total = (mpg$cty+mpg$hwy)
mpg


# $avg = mpg$total/2
# View(mpg)
# head(mpg)

qplot(data = mpg, x = hwy, bins = 30)
qplot(data = mpg, x = cty)
qplot(data = mpg, x = cty, geom = 'boxplot')
qplot(data = mpg, x = drv, y = hwy, geom = 'line')
qplot(data = mpg, x = drv, y = hwy, geom = 'boxplot', colour = drv)
# mpg = as.data.frame(gglpot2::mpg)

gender = c('man', 'woman', 'woman', 'man', 'man')
gender
Ngender = as.factor(gender) # 타입 변환
Ngender
# plot(gender) 에러
# qplot(gender)

qplot(gender)
table(Ngender) #man woman 
               #  3     2
mode(Ngender) # "numeric"
class(Ngender) # "factor"
plot(Ngender) # factor로 변환하여 plot 사용 가능
is.factor(Ngender) # TRUE

args(factor) # factor함수 매개인자 정보 출력

Ogender = factor(gender, levels = c('woman', 'man'))
par(mfrow = c(1, 2))
plot(Ngender)
plot(Ogender)

dt = list(name='kim', wife='carry', gender=TRUE, chile.ages=c(4, 7, 9))
dt[1]      # 'kim'
dt['wife'] # 'carry'
dt[3]      # TRUE
length(dt) # 4

