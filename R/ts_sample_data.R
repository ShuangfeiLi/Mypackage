#' ts_sample_data
#'
#' Sample data for TS trend model visualization function.
#'
#' @format 249 x 2 data frame
#'
#' \describe{
#' \item{date}{time horizon from 2000 to 2020}
#' \item{value}{the monthly sales of Beer, Wine and Liquor in the U.S.}
#' }
#'
"ts_sample_data"

ts_sample_data<- read.csv("MRTSSM4453USN.csv")
ts_sample_data$date= as.Date(ts_sample_data$date)
ts_sample_data$time = seq_len(nrow(ts_sample_data))
usethis::use_data(ts_sample_data, overwrite = TRUE)
