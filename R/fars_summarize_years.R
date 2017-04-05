#'Summarizing data to see how many observations per year and month
#'
#'@param vactor takes years as parameter
#'
#'@return a data frame tbl which shows number of observations grouped by year and month
#'
#'@importFrom dplyr bind_rows group_by summarize
#'@importFrom tidyr spread
#'@importFrom magrittr "%>%"
#'
#'@export
#'
fars_summarize_years <- function(years) {
  MONTH <- NULL
  year <- NULL
  n <- NULL
  dat_list <- fars_read_years(years)
  dplyr::bind_rows(dat_list) %>%
    dplyr::group_by(year, MONTH) %>%
    dplyr::summarize(n = n()) %>%
    tidyr::spread(year, n)
}
