#' Cross-Covariance Principal Components Analysis
#'
#' @param x matrix
#' @param y matrix
#'
#' @return list
#' @export
#'
#' @examples
#' # Generate some example data
#' set.seed(123)
#' x <- matrix(rnorm(100 * 3), nrow = 100, ncol = 3)
#' y <- matrix(rnorm(100 * 5), nrow = 100, ncol = 5)
#' xpca(x, y)



xpca <- function(x, y) {
  if (nrow(x) != nrow(y)) {
    stop("The number of rows in x and y must be the same.")
  }

  mean_x <- colMeans(x, na.rm = TRUE)
  mean_y <- colMeans(y, na.rm = TRUE)
  x_centered <- sweep(x, 2, mean_x)
  y_centered <- sweep(y, 2, mean_y)
  cross_cov_matrix <- t(x_centered) %*% y_centered / (nrow(x) - 1)

  svd_result <- svd(cross_cov_matrix)
  singular_values <- svd_result$d
  u <- svd_result$u
  v <- svd_result$v

  list(
    singular_values = singular_values,
    u = u,
    v = v,
    x_loadings = u,
    y_loadings = v
  )
}
