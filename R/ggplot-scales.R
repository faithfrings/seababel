#' ggplot2 fill scale using SeaBABEL palette
#' @param discrete Whether to use discrete or continuous scale.
#' @param ... Additional arguments to pass to scale_fill_manual or scale_fill_gradient
#' @export
scale_fill_seababel <- function(discrete = TRUE, ...) {
  if (discrete) {
    ggplot2::scale_fill_manual(values = sea_babel_palette(7, "discrete"), ...)
  } else {
    ggplot2::scale_fill_gradientn(colors = sea_babel_palette(256, "continuous"), ...)
  }
}

#' ggplot2 color scale using SEA BABEL palette
#' @param discrete Whether to use discrete or continuous scale.
#' @param ... Additional arguments to pass to scale_color_manual or scale_color_gradientn
#' @export
scale_color_seababel <- function(discrete = TRUE, ...) {
  if (discrete) {
    ggplot2::scale_color_manual(values = sea_babel_palette(7, "discrete"), ...)
  } else {
    ggplot2::scale_color_gradientn(colors = sea_babel_palette(256, "continuous"), ...)
  }
}
