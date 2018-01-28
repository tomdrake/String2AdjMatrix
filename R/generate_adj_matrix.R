#generate_adj_matrix

generate_adj_matrix <-function(string_data, data_separator = ',', remove_spaces = F){
  if(remove_spaces == F){
string_in = string_data

string_a = paste0(string_in, collapse = data_separator)

string_b = unique(unlist(strsplit(string_a, data_separator)))

empty_matrix = matrix(data = NA, length(string_b), length(string_b))

rownames(empty_matrix) = string_b
colnames(empty_matrix) = string_b
result = empty_matrix
  }
  if(remove_spaces == T){
    string_in = string_data

    string_a = paste0(string_in, collapse = data_separator)

    string_b = unique(unlist(strsplit(string_a, data_separator)))

    empty_matrix = matrix(data = NA, length(string_b), length(string_b))

    rownames(empty_matrix) = gsub(' ', '', string_b)
    colnames(empty_matrix) = gsub(' ', '', string_b)
    result = empty_matrix
  }
  return(result)
}
