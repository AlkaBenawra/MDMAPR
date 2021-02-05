#' dbInstance
#' @title Indicate whether MDMAPR is connected to database instance.
#' @description Function to indicate if MDMAPR will be run with a database instance.
#' If the application is run with a database, update dbVariables function.
#'
#' @param x defines if there is a database connection or not
#'
#' @return "Yes" or "No"
#'
#' @export
#'
#' @usage dbInstance(x)
#'
#' @examples
#' dbInstance("Yes")
#' dbInstance("No")

dbInstance <- function(x) {
  if (x == "Yes")
  {assign("db_int", "Yes", envir = .GlobalEnv)}
  else
  { assign("db_int", "No", envir = .GlobalEnv)}
}
