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
rownames(m6) = c('서울', '제주', '울산', '경기', '대구', '인천', '서해', '남해')
m6

m6['경기', '주말']
m6[4, 2]

x = c(1:5)
y = c(31:35)

z1 = rbind(x,y) # row 먼저 채워짐
z1

z2 = cbind(x, y) # col 먼저 채워짐
z2

value = c(1:10)
my = array(value, c(3,3,3))
my
