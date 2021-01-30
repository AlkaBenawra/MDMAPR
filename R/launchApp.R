#' @name launchApp
#' @title Launch the MDMAPR app
#' @description  	Runs the MDMAPR Shiny web application
#'
#' @export launchApp
#'
#' @return shiny application object
#'
#' @import shiny
#'
#' @usage launchApp()
#'
#'



# wrapper for shiny::shinyApp()
launchApp <- function() {
  shinyApp(ui = shinyAppUI, server = shinyAppServer)
}
