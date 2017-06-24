pT=function(df) {
  
  
  posttypes=df %>% group_by(type) %>% 
    summarise(n = n())
  names(posttypes)[1]<-paste("TYP")
  names(posttypes)[2]<-paste("N")
  return(posttypes)
}

ggP=function(df) {
  ggplot(df, aes(x=TYP, y=N)) + geom_bar(stat='identity', color="red", fill="red") + labs(x = "Post Type", y = "Count")
}