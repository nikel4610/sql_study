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
score1
score2
