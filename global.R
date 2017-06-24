
# tu powinny być wszystkie funkcje

funkcja = function(url, token){
  #tutaj wyciaga id z urla
  id = gsub('http://facebook.com/', '', url)
  id = gsub('/', '', id)
  # tutaj robi getPage
  getPage(id, token)
  
  
}

ranked_function = function(ex_data) {
  x = ex_data %>%
    group_by(Plant) %>%
    summarise(total = n()) %>%
    mutate(rank = dense_rank(desc(total))) %>%
    filter(rank <= 10)
  return(x)
}



