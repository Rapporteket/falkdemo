#' Server logic for the falkdemo app
#'
#' @param input shiny input object
#' @param output shiny output object
#' @param session shiny session object
#'
#' @return A falkdemo shiny app server object
#' @export

app_server <- function(input, output, session) {

  output$username <- shiny::renderUI(
    paste("Brukernavn (SP_USERNAME):", Sys.getenv("SP_USERNAME"))
  )
  output$usergroups <- shiny::renderUI(
    paste("Brukergrupper (SP_USERGROUPS):", Sys.getenv("SP_USERGROUPS"))
  )
  output$userorgid <- shiny::renderUI(
    paste("Brukerorganisasjon (SP_USERORGID):", Sys.getenv("SP_USERORGID"))
  )
  output$useremail <- shiny::renderUI(
    paste("Bruker epost (SP_USEREMAIL):", Sys.getenv("SP_USEREMAIL"))
  )
  output$userphone <- shiny::renderUI(
    paste("Bruker telefon (SP_USERPHONE):", Sys.getenv("SP_USERPHONE"))
  )
  output$userfullname <- shiny::renderUI(
    paste("Bruker fult navn (SP_USERFULLNAME):", Sys.getenv("SP_USERFULLNAME"))
  )
  output$userregid <- shiny::renderUI(
    paste("Bruker register (SP_USERREGID):", Sys.getenv("SP_USERREGID"))
  )
}
