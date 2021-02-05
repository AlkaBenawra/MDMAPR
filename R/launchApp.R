#' @name launchApp
#' @title Launch the MDMAPR app
#' @description  	This function runs the MDMAPR Shiny web application. Please run the
#' dbInstance  function first to specify if you are running the application with or with
#' out a database. If you are running the application with a databse, then after the dbInstance function run the dbVariables function to input the variabels needed to
#' establish a  connection to your MDMAPR MySQL database instance. Then run launchApp().
#'
#' @export launchApp
#'
#' @return shiny application object
#'
#' @usage launchApp()
#'


# wrapper for shiny::shinyApp()
launchApp <- function() {
  shinyApp(ui = shinyAppUI, server = shinyAppServer)
}
