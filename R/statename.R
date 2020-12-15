#' State abbreviation transfer(abbr to full name)
#'
#' Transfer the full names of 50 U.S. state to corresponding abbreviations.
#' @param x a string, vector: the full name to be transferred to abbreviation.
#'
#' @return the abbreviation of U.S. states
#' @export
#'
#' @examples
#' 1. stateabb("Washington");
#'    stateabb("WASHINGTON");
#' 2. x <- c("New York", "Virginia")
#'    stateabb(x)
stateabb <- function(x){
  uppername = toupper(state.name)
  input = toupper(x)
  abb = state.abb[match(input,uppername)]
  return(abb)
}

#' State abbreviation transfer(full name to abbr)
#'
#' Transfer the abbreviation of 50 U.S. state to full name.
#' @param x a string or vector:the values to be transferred.
#'
#' @return full name of U.S. states.
#' @export
#'
#' @examples
#' statefull("CA")
statefull <- function(x){
  upperabb = toupper(state.abb)
  input = toupper(x)
  full = state.name[match(input,upperabb)]
  return(full)
}
