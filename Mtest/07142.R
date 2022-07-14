su = (1:10)
su

# 짝수만 출력
for (i in su) {
  if (i %% 2 == 0) {print(i)}
}

# 구구단 
dan = 7
for (k in c(1:9)) {
  cat(dan, '*', k, '=', (dan*k), '\n')
}

# while(조건){}
dan = 5
n = 1
while(n<10) {
  cat(dan, '*', n, '=', (dan*n), '\n')
  n = n+1
}

# n<10 대신 TRUE 가능
# 마지막에 {break} 꼭 넣기

