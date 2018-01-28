#Function
string_2_matrix <- function(new_matrix, supplied_string, self = 0){
    result.matrix = new_matrix
  for (i in 1:length(colnames(new_matrix))){
    result.matrix[,i] = string_2_matrix_x(new_matrix, supplied_string, coord_x = i, self = self)
  }
  return(result.matrix)
}
