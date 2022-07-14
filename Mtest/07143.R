# install.packages('ggplot2')
# library(ggplot2)

if(is.element("ggplot2", installed.packages()) == F){
  install.packages('ggplot2')
}

library(ggplot2)

diamond = as.data.frame(ggplot2::diamonds)
diamond

length(diamond) # 열 개수
nrow(diamond) # 행 개수
dim(diamond)

x = diamond$carat # 원하는 필드 추출
x

plot(x)
boxplot(x)
hist(x, breaks=50)
plot(density(x))

par(mfrow=c(2,2)) # 칸 2, 2로 나눠서 한번에 표시
plot(x, col = rainbow(8))
boxplot(x)
hist(x, breaks=50)
plot(density(x))

# 샘플의 크기는 반드시 3부터 5000이내에 있어야 합니다 (오류)
# shapiro.test(x)
# 검증에서 3~5000 사이면 샘플링 sample();

a = sample(x, 20)
shapiro.test(a)

sample(1:10, 4)
sample(letters, 10)

# 랜덤으로 숫자 뽑기 (replace -> 중복허용 여부)
set.seed(1)
sample(1:30, 5, replace=T) 
sample(1:30, 5, replace=F)


