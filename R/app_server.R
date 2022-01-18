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
    paste("Brukernavn (SP_USERNAME):", Sys.getenv("USER"))
  )
  output$usergroups <- shiny::renderUI(
    paste("Brukergrupper (SP_USERGROUPS):", Sys.getenv("USER"))
  )
  output$userorgid <- shiny::renderUI(
    paste("Brukerorganisasjon (SP_USERORGID):", Sys.getenv("USER"))
  )
  output$useremail <- shiny::renderUI(
    paste("Bruker epost (SP_USEREMAIL):", Sys.getenv("USER"))
  )
  output$userphone <- shiny::renderUI(
    paste("Bruker telefon (SP_USERPHONE):", Sys.getenv("USER"))
  )
  output$userfullname <- shiny::renderUI(
    paste("Bruker fult navn (SP_USERFULLNAME):", Sys.getenv("USER"))
  )
  output$userfullname <- shiny::renderUI(
    paste("Bruker register (SP_USERREGID):", Sys.getenv("USER"))
  )
}
