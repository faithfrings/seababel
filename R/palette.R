#' SEA BABEL Color Palette
#'
#' Custom color palette inspired by the Marine Bioacoustics and Behavioral Ecology Lab (SEA BABEL) at the University of New Hampshire.
#'
#' @param n Number of colors to return.
#' @param type Either "discrete" or "continuous".
#'
#' @return A vector of colors.
#' @export
#'
#' @examples
#' sea_babel_palette(5, type = "discrete")
#' sea_babel_palette(100, type = "continuous")
sea_babel_palette <- function(n, type = c("discrete", "continuous")) {
  type <- match.arg(type)
  colors <- c(
    navy       = "#1B2D4F",
    light_blue = "#99D8E9",
    seafoam    = "#3FB16B",
    aqua       = "#20CFCF",
    gray       = "#B3B3B3",
    lavender   = "#9C97C4",
    white      = "#FFFFFF"
  )

  if (type == "discrete") {
    if (n > length(colors)) {
      stop("Number of requested colors greater than what palette can offer")
    }
    return(unname(colors[1:n]))
  } else {
    ramp <- grDevices::colorRampPalette(colors)
    return(ramp(n))
  }
}
