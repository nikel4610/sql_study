df = data.frame(sex = c('M', 'F', NA, 'M', 'F'),
                score = c(5, 4, 3, 4, NA))
df

is.na(df)
table(is.na(df))
table(is.na(df$gender))
table(is.na(df$score))

mean(df$score) # NA
mean(df$score, na.rm = T)
sum(df$score)  # NA

library(dplyr)
df %>% filter(is.na(score))
df %>% filter(!is.na(score))

df_nomiss = df %>% filter(!is.na(score))
mean(df_nomiss$score)

df %>% filter(!is.na(gender))

score1 = c(5, 4, 3, 4, NA)
score1
is.na(score1)
table(is.na(score1))

new_score = ifelse(is.na(score1),0,score1)
new_score

new_score1 = function(x) {
  hap = sum(x, na.rm = T)
  avg = mean(x, na.rm = T)
  cat('총점 = ', hap, '\n')
  cat('평균 = ', avg, '\n')
}

new_score1(score1)




