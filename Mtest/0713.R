value1 = c(7, 8, 9, 1, 5)
value1

value2 = c('만두', '짬뽕', '돈까스')
value2

value3 = c('만두', '짬뽕', 7, 12, 3)
value3

value4 = c(7, 8, 3.14, 2)
value4

# seq(), rep()
# seq() -> 범위 지정
# rep() -> 반복
su5 = seq(1:20)
su5

# 기본값 by = 1
su6 = seq(1, 20, by = 1)
su6

su7 = seq(20, 1, by = -1)
su7

su8 = seq(1, 20, by = 2)
su8

su9 = rep(1:5, 3)
su9

su10 = rep(1:5, each=3)
su10

a = c('안동', '제주도', '울산', '부산')
b = c('강원도', '경기도', '서울')

# a 와 b 합치기
cat(a, b) # 안동 제주도 울산 부산 강원도 경기도 서울
paste(a, b) # [1] "안동 강원도"   "제주도 경기도" "울산 서울"     "부산 강원도"  
paste(a, b, sep='-') # [1] "안동-강원도"   "제주도-경기도" "울산-서울"     "부산-강원도"

msg1 = c('제주도 한라산', '카카오택시', '네이버메일')
# substr(변수, 시작지점, 몇번째 글자 까지)
substr(msg1, 1, 2)

jumin = "123456-9090909"
substr(jumin, 1, 6)
