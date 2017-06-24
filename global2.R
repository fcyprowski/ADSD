# tu powinny by? wszystkie funkcje

library(Rfacebook)


token = '142035436352490|Ne4qpqldAF8ilSM2K1LUFrt5ZxE'
id = '63563473556'

'https://facebook.com/wyborcza'

dane = getPage(id, token, n=100)


# zadanie 4. Tworzenie podsumowania dziennego dla liczby post?w (dane)
daily_posts_summary = aggregate(comments_count ~ substring(dane$created_time,1,10), dane, sum)
names(daily_posts_summary)[1]<-"data"

