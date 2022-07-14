if(is.element('stringr', installed.packages()) == F){
  install.packages('stringr')
}

library(stringr)

# 문자 substr(), paste(), cat()
msg = 'asdf1234'
str_extract_all(msg, '[a-z]{3,}') # [문자범위]{갯수}
 # {3, } -> 최소 3개부터 
 # 한글 -> '[가 - 히]{..}'

str_extract_all(msg, '[^a-z]')
str_extract_all(msg, '[^a-z]{3,}') # [^문자범위] -> 문자 이외 출력

a = '123456-4234132'

str_extract(a, '[0-9]{6}-[0-9]{7}') 
str_extract_all(a, '[0-9]{6}-[0-9]{7}') 

