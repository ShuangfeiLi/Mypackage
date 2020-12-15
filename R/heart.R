#' Heart Function
#'
#' Draw a heart on the axis.
#'
#' @param title a string: you can choose a blessing phrase as the title; the default is NULL.
#'
#' @return
#' Draw a heart plot(it may take 20 seconds.)
#' @export
#'
#' @examples
#' heart()
#' heart("Wish you happy!")
heart <- function(title = ""){
  a=rnorm(1e6)
  b=rnorm(1e6)
  c=abs(a)+b
  plot(a,c,col= 2, main= title)
}
