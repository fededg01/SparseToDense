# SparseToDense

## Installation 
devtools::install_github("fededg01/SparseToDense")
## Building the Docker image
docker build -t dense_image . 
## Example
Rscript -e 'library(SparseToDense); runSparseToDense("data", "matrix.mtx", "dense_matrix.csv")' 
