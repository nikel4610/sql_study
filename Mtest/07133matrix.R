# 벡터, matrix, array, data.frame
num = c(1100, 2200, 3300)
name = c('고길동', '마이콜', '박찬호')
juso = c('쌍문', '신사', '공주')
score = c(78, 34, 29)

frame = data.frame('번호'=num, '이름'=name, '주소'=juso, '점수'=score)
frame

# m1 = matrix(c(num, name, juso, score), nrow=4, byrow=TRUE)
# m1

# c() 나 열=벡터, matrix(), data.frmae(), array(데이터, c(페이지, 행, 열))
# list 함수

a = c(1:10)
b = matrix(1:10, 2, 5)
c = c('평일', '주말')
sam1 = list(a, b, c)
sam1

score1 = list(60, 80, 50, 90)
score2 = list(c("kor", 'eng'))
score1[score1>=80]
score12 = list(score1, score2)
score12

unlist(score1)
unlist(score2)
score1
score2

score13 = data.frame('점수' = score1, '과목'= score2)
score13 # array(), list(), matrix() 보다는 데이터 관리는 frame()이 가장 좋다

score5 = list(2:10*10)
score5
score6 = list(c(2:10)*3)
score6

# list(), array(), factory()
f1 = c('x', 'y', 'z')
f1
is.factor(f1) # FALSE
is.character(f1) #TRUE
is.double(f1) #FALSE

f2 = factor(f1)
is.factor(f2)
f2 # [1] x y z
  # Levels: x y z


