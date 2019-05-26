#' Save encoded string
#' 
#' Mainly used to save an encoded output in a file on your working directory.
#' @param str An object containing the string to save.
#' @param file Optional. The name and format of the file. If no value is provided, the function will use the name of the object passed as str argument and save it as a txt file <object.txt> on your working directory.
#' @keywords save
#' @export
#' @details This function acts as a wrapper for write.table function, intended to save the output of the
#' j_encode function in a text file (useful when the result is a long string).
#' 
#' The wrapper strips the row and col names and also removes the quotes at the start and end of the string.
#'     

j_save <- function(str, file = NULL) {
  
  if( is.null(file) ) {
    filename <- paste( deparse(substitute(str)), ".txt", sep = "" )
  } else {
    filename <- file
  }
  
  write.table(str, file = filename, quote = FALSE, row.names = FALSE, col.names = FALSE)
  
}