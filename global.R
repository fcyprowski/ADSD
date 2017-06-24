# tu powinny być wszystkie funkcje

funkcja = function(url, token){
  #tutaj wyciaga id z urla
  id = gsub('http://facebook.com/', '', url)
  id = gsub('/', '', id)
  # tutaj robi getPage
  getPage(id, token)
  
  
}