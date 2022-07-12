x = (1:10)
x
x_sum = sum(x)
x_avg = sum(x)/10
x_sum
x_avg

mypage = function(a, b) {
  hap = a + b
  avg = hap/2
  cat('합계: ', hap, '\n')
  cat('평균: ', avg)
}

mypage(90, 85)

# 함수 대신 if ~ else 사용
num = 24
ifelse(num%%2 == 0 , '짝수', '홀수')

# for 반복문
dan = 7
for (k in (x)){
  cat(dan, '*', k, '=', (dan*k), '\n')
}
  
