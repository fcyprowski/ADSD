plot_function = function(ex_plot) {
  ggplot() +
    geom_bar(data = y, aes(x=as.factor(Plant), y = total, fill = Plant), 
             stat = 'identity') +
    geom_text(data = y, aes(x=as.factor(Plant), y = total, label = total), hjust=-0.25) +
    coord_flip() +
    labs(x = "nazwa top 10 komentujących", y="") +
    ggtitle("Top 10 najczęściej komentujacych") +
    theme(axis.title.x=element_blank(), 
          axis.text.x=element_blank(), 
          axis.ticks.x=element_blank()) 
}

