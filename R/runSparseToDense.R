#' execute the function SparseToDense into a container
#'
#' @param data_dir Path to the local folder containing the input file;
#' @param input_name Name of the sparse matrix file
#' @param output_name Name of the dense matrix file
#' @return A named list with ncol and nrows
#' @examples
#'
#' \dontrun{
#' runSparseToDense ("data", "matrix.mtx", "dense_matrix.csv")
#' }
#' @export
#' @importFrom Matrix readMM
#' @importFrom Utils devtools
runSparseToDense <- function(data_dir, input_name, output_name) {
  cmd <- sprintf("docker run --rm -v %s:/data dense_image %s %s",
                 normalizePath(data_dir), file.path("/data", input_name),
                 file.path("/data", output_name))
  system(cmd)

  }
