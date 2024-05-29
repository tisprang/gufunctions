#' Set ggplot theme to GU-Theme
#'
#' This function activates a ggplot-theme which fits the GU-CD.

#' @export
theme_gu <- function() {
    ggplot2::theme(
        panel.background = element_rect(
            fill = rgb(248,246,245, maxColorValue = 256),
            colour = rgb(248,246,245, maxColorValue = 256)
        ), 
        panel.border = element_rect(
            fill = NA,
            colour = "grey20"
        ), 
        panel.grid = element_line(colour = "grey92"),
        panel.grid.minor = element_line(linewidth = rel(0.5)),
        plot.background = element_rect(
            fill = rgb(248,246,245, maxColorValue = 256), 
            color = rgb(248,246,245, maxColorValue = 256)
        ),
        strip.background = element_rect(
            fill = "grey85", 
            colour = "grey20"
        ), 
        legend.background = element_rect(
            fill = rgb(248,246,245, maxColorValue = 256), 
            color = rgb(248,246,245, maxColorValue = 256)
        ),
        legend.key = element_rect(fill = rgb(248,246,245, maxColorValue = 256)),
        panel.spacing = unit(2, "lines"),
        plot.margin = unit(c(.75, .75, .75, .75), "cm"),
        complete = TRUE
    )
}