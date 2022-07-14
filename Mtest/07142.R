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

note = function(){
  su1 = c(1:5)
  for (k in su1){
    cat(k, '회 보통 함수 note \n')
  }
}
note()

book = function() {
  title = '아아아'
  return(title)
}

myhap = function(x, y){
  hap = x+y
  cat('합계 = ', hap, '\n')
}

myhap(1, 2)

# myFrandTotal = function(){
#   su = c(1:10)
#   total = 0
#   for (i in su){
#     total = total + i
#   }
#   avg = total/10
#   cat("total = ",total,'\n')
#   cat("avg = ", avg)
# }

# myFrandTotal()

myGrandTotal = function(i,j){
  hap = sum(i:j)
  avg = mean(i:j)
  cat('합계=',hap,'평균=',avg)
}
myGrandTotal(1,10)

myTest = function(...){
  data = c(...)
  hap = 0
  for(k in data){
    if(is.numeric(k)){
      hap = hap + k
    }
      cat('합계 = ', hap, '\n')
  }
}

myTest(3, 2, 1, 4, 5)


