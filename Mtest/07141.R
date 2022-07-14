csv = read.csv('D:/rproject/sql_study/Mtest/examples/kr_road.csv',
               fileEncoding = 'euc-kr')
head(csv)
tail(csv)
# 파일 한글 꺠지면 fileEncoding='euc-kr'

csv2 = csv[c(1:12), ]
csv2

barplot(csv2$부상신고자수, names=csv2$월, ylim=c(0,100), col='purple', xlab='월별', 
        ylab='인원', border = 0.3, density=100, main='빅데이터')

barplot(csv2$부상신고자수, names=csv2$월, xlim=c(0,100), horiz = T, col='purple', 
        xlab='월별', ylab='인원', border = 0.7, density=100, main='빅데이터')

