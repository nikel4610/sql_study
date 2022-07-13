m1 = matrix(c(1:10), nrow = 2)
m1

m2 = matrix(c(1:10), nrow = 3)
m2

m3 = matrix(c(1:10), ncol = 2)
m3

m4 = matrix(c(1:10), ncol = 3)
m4

# byrow = TRUE -> 행 먼저 채워짐
# 기본값은 FALSE
m5 = matrix(c(1:16), nrow = 2, byrow = TRUE)
m5
# [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8]
# [1,]    1    2    3    4    5    6    7    8
# [2,]    9   10   11   12   13   14   15   16

length(m5)
ncol(m5)
nrow(m5)

# apply(변수, 행(1) 열(2), 그룹함수 이름만)
apply(m5, 2, max) # 9 10 11 12 13 14 15 16
apply(m5, 1, min) # 1 9
apply(m5, 2, sum) # 10 12 14 16 18 20 22 24

m6 = matrix(c(1:16), ncol = 2, byrow = TRUE)
m6

colnames(m6) = c('평일', '주말')
m6