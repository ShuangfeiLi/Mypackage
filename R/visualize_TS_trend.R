#' Visualize TS trend models
#'
#' Visualize the initial time series and fitted trend models in one plot automatically with a legend.
#' @param ... legend tab names = value
#' @param title set the title for the plot
#' @param xlab the label of x axis
#' @param ylab the label of y axis
#' @param ylim set the limit of y(optional); the default value is ylim = NULL.
#' @param data data source
#'
#' @return plot several time series trend models together with a legend.
#' @export
#' @examples
#' linear_model = lm(value~time, ts_sample_data)
#' quad_model = lm(value~time + I(time^2), ts_sample_data)
#' log_model = lm(log(value)~time, ts_sample_data)
#'
#' 1. plots(linear = linear_model$fitted.values,
#'         quadratic = quad_model$fitted.values,
#'         log = exp(log_model$fitted.values),
#'         title = 'Time series Trend graph using linear, quadratic and exponential Models')
#'
#' 2. plots(linear = predict(linear_model),
#'         quadratic = predict(quad_model),
#'         log = exp(predict(log_model)),
#'         title = 'Time series Trend graph using linear, quadratic and exponential Models',
#'         observed_data = FALSE,
#'         ylim=c(2000, 10000))
plots <- function(..., title = "" ,xlab="Date",ylab="Value", ylim = NULL, observed_data = TRUE, data){
  ty = if(observed_data) "line" else "n"
  plot(value~date, data, ty=ty, col=1, main = title, xlab = xlab, ylab = ylab, ylim=ylim, lwd = 2)
  mod_vals = list(...)
  sq = seq_along(mod_vals)
  name = c("observed_data", names(mod_vals))
  for (i in sq) lines(data$date, mod_vals[[i]], col = i+1 , lwd = 2)
  legend('topleft', legend=name,cex = 0.2, col= c(sq, i+1),bty='n',y.intersp = 0.7,lty=1, lwd = 1)
}
