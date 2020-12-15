#' Sample data for TS trend model visualization function.
#'
#' @format 249 x 2 data frame
#'
#' \describe{
#' \item{date}{time horizon from 2000 to 2020}
#' \item{value}{the monthly sales of Beer, Wine and Liquor in the U.S.}
#' }
#'
"sample_data"

sample_data<- read.csv("MRTSSM4453USN.csv")
usethis::use_data(sample_data)
