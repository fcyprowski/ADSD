# tu powinny by? wszystkie funkcje

library(Rfacebook)
library(shiny)
library(shinydashboard)


token = '142035436352490|Ne4qpqldAF8ilSM2K1LUFrt5ZxE'
id = '63563473556'
date.from = '2017-06-22'
date.to = '2017-06-23'

'https://facebook.com/wyborcza'

dane = getPage(id, token, n=100)


# zadanie 4. Tworzenie podsumowania dziennego dla liczby post?w (dane)
daily_posts_summary = aggregate(comments_count ~ substring(dane$created_time,1,10), dane, sum)
