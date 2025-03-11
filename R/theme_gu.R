#' Set ggplot theme to GU-Theme
#'
#' This function activates a ggplot-theme which fits the GU-CD.

#' @export
theme_gu <- function() {
    ggplot2::theme(
        panel.background = element_rect(
            fill = rgb(248,246,245, maxColorValue = 255),
            colour = rgb(248,246,245, maxColorValue = 255)
        ), 
        panel.border = element_rect(
            fill = NA,
            colour = "grey20"
        ), 
        panel.grid = element_line(colour = "grey92"),
        panel.grid.minor = element_line(linewidth = rel(0.5)),
        plot.background = element_rect(
            fill = rgb(248,246,245, maxColorValue = 255), 
            color = rgb(248,246,245, maxColorValue = 255)
        ),
        strip.background = element_rect(
            fill = "grey85", 
            colour = "grey20"
        ), 
        legend.background = element_rect(
            fill = rgb(248,246,245, maxColorValue = 255), 
            color = rgb(248,246,245, maxColorValue = 255)
        ),
        legend.key = element_rect(fill = rgb(248,246,245, maxColorValue = 255)),
        legend.position = "bottom",
        panel.spacing = unit(2, "lines"),
        plot.margin = unit(c(.5, .5, .5, .5), "cm"),
        complete = TRUE
    )
}

#' Adjust background of geom sf to GU-Theme
#'
#' This function makes the background of a ggplot-map fit the GU-CD.

#' @export
gu_map <- function(plot) {
    cowplot::ggdraw(plot) +
        theme(
            panel.background = element_rect(
                fill = rgb(248, 246, 245, maxColorValue = 255), 
                colour = rgb(248, 246, 245, maxColorValue = 255)
            )
        )
}