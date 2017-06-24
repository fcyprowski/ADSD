cCBYT=function(df) {
  df %>% 
    group_by(type) %>%
    summarise(likes=sum(likes_count),comments=sum(comments_count),shares=sum(shares_count))
}
cCBYT(datax)

ggplot(melt(cCBYT(datax)), aes(x=type, y=value, fill=variable)) + geom_bar(stat='identity') + coord_flip() + labs(x = "Post Type", y = "Comments on actions") +
  scale_fill_manual(values = c("purple", "yellow", "black") )