postsPerDay=function(df) {
  ggplot(aes(x=df[[1]], y=df[[2]]),data = df)+geom_line(group=1,size=1.5)
}

#wywolywac jak poniżej
postsPerDay(daily_posts_summary)

#do zadania 4
daily_posts=function(df) {
  daily_posts_summary = aggregate(comments_count ~ substring(data$created_time,1,10), data, sum)
  names(daily_posts_summary)[1]<-paste("date")
  names(daily_posts_summary)[2]<-paste("posts_nr")
  return(daily_posts_summary)
}

