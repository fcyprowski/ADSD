cC=function(df) {
  df %>%
    summarise(likes=sum(likes_count),comments=sum(comments_count),shares=sum(shares_count))
}

cC(data)

cCBYT=function(df) {
  df %>% 
    group_by(type) %>%
    summarise(likes=sum(likes_count),comments=sum(comments_count),shares=sum(shares_count))
}

cCBYT(data)