#2022-07-12

#ggplot 패키지 설치

# installed.packages() -> 인스톨한 패키지 확인
# install.packages('ggplot2') -> 패키지 설치
library(ggplot2)
x = c('a', 'b' ,'a', 'c', 'c')
x
qplot(x)


mpg = as.data.frame(ggplot2::mpg)
mpg
head(mpg)
tail(mpg)
View(mpg)
str(mpg)
head(mpg, 10)

mpg$total = (mpg$cty+mpg$hwy)
mpg$avg = mpg$total/2
View(mpg)
head(mpg)
