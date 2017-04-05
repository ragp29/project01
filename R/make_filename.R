#'Make filename
#'
#'@param year integer
#'
#'@return a filename with the specified year in the format "accident_%d.csv.bz2"
#'
#'@export

make_filename <- function(year) {
  year <- as.integer(year)
  sprintf("accident_%d.csv.bz2", year)
}

