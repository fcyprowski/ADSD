getComments = function(output_df) {
  # output_df - dane wyciagniete za pomoca funkcji getPageWithUrl
  require(Rfacebook)
  require(dplyr)
  # zaciagamy dane (po petli - dla kazdego posta wex komentarze)
  dane = lapply(output_df$id, function(post_id) {
    komenty = getPost(post_id,
                 n.likes = 0,
                 n.comments = 1000)$comments
  }) %>%
    bind_rows()
  
  return(dane)
}