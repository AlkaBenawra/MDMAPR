#' dbInstance
#' @title Indicate whether MDMAPR is connected to database instance.
#' @description Function to indicate if you are running MDMAPR with a database instance.
#' @param x defines if you have a database connection or not
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
