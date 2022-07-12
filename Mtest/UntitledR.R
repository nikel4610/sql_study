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
