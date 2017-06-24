ranked_function = function(ex_data) {
  x = ex_data %>%
    group_by(Plant) %>%
    summarise(total = n()) %>%
    mutate(rank = dense_rank(desc(total))) %>%
    filter(rank <= 10)
  return(x)
}








