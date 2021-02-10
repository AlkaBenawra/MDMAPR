#' dbVariables
#' @title Information needed to connect to local or remote MDMAPR MySQL database instance.
#' Please ensure dbInstance()  is set to "Yes" if you are running the application
#' with a database connection.
#' @description function stores username, password, database name, and host name for
#' database instance to connect to.
#' @param user defines username for database connection.
#' @param password defines password for database connection.
#' @param dbname defines name of database connection.
#' @param host defines host name for database connection.
#'
#' @export
#'
#' @usage dbVariables(user, password, dbname, host)
#'
#' @examples
#' dbVariables(user = "root",
#' password = "Test23!",
#' dbname = 'MDMap_2.0',
#' host = "127.0.0.1")

dbVariables <- function(user, password, dbname, host) {
  assign("db_user", user, envir = as.environment(pos))
  assign("db_password", password, envir = as.environment(pos))
  assign("db_name", dbname, envir = as.environment(pos))
  assign("db_host", host, envir = as.environment(pos))
}

pos <- 1
