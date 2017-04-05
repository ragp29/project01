#'Reads in data from different years and stores in dat which contains month and year
#'
#'@param vector takes years as parameter
#'
#'@importFrom dplyr mutate select
#'
#'@return a data frame tbl which includes month and year across different years
#'
#'@export

fars_read_years <- function(years) {
  lapply(years, function(year) {
    file <- make_filename(year)
    tryCatch({
      dat <- fars_read(file)
      dplyr::mutate(dat, year = year) %>%
        dplyr::select(MONTH, year)
    }, error = function(e) {
      warning("invalid year: ", year)
      return(NULL)
    })
  })
}
