#' EONET
#'
#' The Earth Observatory Natural Event Tracker (EONET) is kindly provided by NASA website which is a curated source of continuously updated natural event metadata around the world.
#' This function is to 1) get the number of a specific natural event happened in the prior t days; 2) simplify the process of retrieving data from the web site and users just need to grasp their own api key.
#'
#' @param t Limit the number of prior days (including today) from which events will be returned.
#' @param event The name of event
#' @param APIkey Your api_key applied from NASA website.
#'
#' @return Return the number of a specific event happened within the past t days.
#' @export
#'
#' @examples
#' naturalevents(t = 10, event = "Wildfire", APIkey)
naturalevents <- function(t, event, APIkey){
  URL = paste("https://eonet.sci.gsfc.nasa.gov/api/v2.1/events?", "days=", t, sep = "")
  PATH = paste(URL, "api_key=" , APIkey, "&file_type=json",sep ="")
  initialquery = jsonlite::fromJSON(PATH)
  initialquery

  df = as.data.frame(initialquery$events)

  booleans = grepl(event, df$title, fixed=TRUE)
  Num_Events = sum(booleans)

  return(Num_Events)
}
