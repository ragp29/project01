#'Create data frame as table and stores it in fars_read
#'
#'@param string a filename  + additional info about path. Check working directory
#'
#'@importFrom readr read_csv
#'
#'@return a data frame tbl
#'
#'@source  US National Highway Traffic Safety Administration's Fatality Analysis Reporting System
#'
#'@export
#'
fars_read <- function(filename) {
  if(!file.exists(filename))
    stop("file '", filename, "' does not exist")
  data <- suppressMessages({
    readr::read_csv(filename, progress = FALSE)
  })
  dplyr::tbl_df(data)
}
