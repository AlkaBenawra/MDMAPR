#' dbInstance
#' @title Indicate whether MDMAPR is connected to database instance.
#' @description Function to indicate if you are running MDMAPR with a database instance.
#' @param x defines if you have a database connection or not
#'
#' @return "Yes" or "No"
#'
#' @export
#'
#' @examples "Yes" or "No"
#'
dbInstance <- function(x) {
  if (x == "Yes")
  { db_int<<- "Yes"}
  else
  { db_int<<- "No"}
}

dbExists <- db_int
