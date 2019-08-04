#' Plot function
#'
#' This is a internal function. This function allows the program to
#' plot the data.
#'
#' @param simp.df dataframe to be plotted
#' @param x_label x label for plot
#' @param y_label y label for plot
#' @import ggplot2
#' @import reshape2
#' @return Returns a plot
plotLONGO <- function(simp.df, x_label, y_label) {
  column_length_name <- "kb_length"
  simp.df <- as.data.frame(lapply(simp.df, as.numeric))
  melt.df <- melt(simp.df, id.vars = column_length_name)
  plot <- ggplot(melt.df, aes(x = kb_length, color = variable)) + geom_line(aes(y = value))
  # can add caption or subtitle for more descriptive plots
  # set position of the legend
  plot <- plot + labs(title = "LONGO output", y = y_label, x = x_label)
  plot
}
