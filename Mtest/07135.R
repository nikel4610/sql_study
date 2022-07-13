score = c(94, 23, 56, 32, 13)
names(score) = c('A', 'B', "C", "D", "E")
par(mfrow=c(1, 2))
barplot(score, ylim=c(0,100),
        col=rainbow(8), xlab ='이름', ylab ='점수', main = '빅데이터')


barplot(score, horiz=TRUE, xlim=c(0,100),
        col=rainbow(8), xlab ='점수', ylab ='이름', main = '빅데이터')

# cex -> 점 크기
dotchart(score, color=c('blue', 'red'), lcolor='gray', pch=1:8,
         labels=names(score), ylab ='이름', xlab ='점수', main ='빅데이터'
         ,cex = 1.2)

pie(score, border = 1, radius = 1, edges = 100, clockwise = TRUE,
    main = 'pie graph', cex = 2, labels = paste(names(score), score,
    '점'))
