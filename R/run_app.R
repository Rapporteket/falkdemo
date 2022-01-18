#' Run the falkdemo Shiny Application
#'
#' @return An object representeing the falkdemo app
#' @export

run_app <- function() {

  shiny::shinyApp(ui = app_ui, server = app_server)
}
