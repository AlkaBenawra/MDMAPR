#' dbVariables
#' @title Information needed to connect to local or remote database instance.
#' @description function stores username, password, database name, and host name for database instance to connect to.
#' @param user defines username for database connection.
#' @param password define password for database connection.
#' @param dbname defines name of database instance.
#' @param host defines host name for database connection.
#'
#' @export
#'
#' @usage dbVariables(user, password, dbname, host)
#'
#' @examples
#'
#' dbVariables(user = "root",
#' password = "Test23!",
#' dbname = 'MDMap_2.0',
#' host = "127.0.0.1")

dbVariables <- function(user, password, dbname, host) {
  assign("db_user", user, envir = .GlobalEnv)
  assign("db_password", password, envir = .GlobalEnv)
  assign("db_name", dbname, envir = .GlobalEnv)
  assign("db_host", host, envir = .GlobalEnv)
}
