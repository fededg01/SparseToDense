#' Convert a dense matrix to a sparse matrix #titolo
#'
#' @param input_file Path to a CSV file containing a dense numeric matrix.
#' @param output_file Path where the sparse matrix will be saved (.rds).
#' @return A named list with n_nonzero and sparsity_percentage.
#' @examples
#' \dontrun{
#' denseToSparse("dense.csv", "sparse.rds")
#' }
#' @importFrom Matrix readMM  #librerie che servono perché nella funzione riportata sotto non lo posso scrivere
#' @importFrom utils write.csv
#' @export
denseToSparse <- function(input_file, output_file = "dense_matrix.rds"){
  sparse_mat <- readMM(input_file)
  dense_mat <- as.matrix(sparse_mat)
  write.csv(dense_mat, file = output_file, row.names = FALSE)

  return(list(n_rows = nrow(dense_mat), n_cols = ncol(dense_mat)))
}
