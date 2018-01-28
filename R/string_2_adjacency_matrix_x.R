#Function x
require(stringr)

string_2_matrix_x <- function(new_matrix, supplied_string,  coord_x = 1, self = 0){
    result = list()
  reference_string = colnames(new_matrix)[coord_x]
  for (i in 1:length(rownames(new_matrix))){
    str1 = reference_string
    str2 = rownames(new_matrix)[i]
    string_search = paste0('^(?=.*', str1, ')(?=.*', str2, ')')
    result[[i]] = ifelse((str1 == str2), self, sum(str_count(supplied_string, string_search)))
  }
  return(unlist(result))
}
