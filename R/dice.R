#' Rolling a dice
#'
#' This function provides utilities to calculate the probabilities of each dice-rolling result and plot the frequency bar chart simultaneously.
#' @param n  the number of times rolling the dice.
#'
#' @return the frequency of each result and a frequency bar chart with a red line at the p=1/6 average level.
#' @export
#'
#' @examples
#' dice(100)
#' dice(500)
dice <- function(n = 100){
  throws <- sample(1:6, n, rep = T)
  frequency <- table(throws)/n
  barplot(frequency, main = "")
  abline(h = 1/6, col = 'red', lwd = 2)
  return(frequency)
}
