#' Client (ui) for the falkdemo app
#'
#' @return A falkdemo shiny app ui object
#' @export

app_ui <- function() {


  shiny::addResourcePath("www", system.file("www", package = "rapbase"))
  app_title <- "falkdemo"

  shiny::tagList(
    shiny::navbarPage(
      title = shiny::div(
        shiny::a(
          shiny::includeHTML(
            system.file("www/logo.svg", package = "rapbase")
          )
        ),
        app_title),
      windowTitle = app_title,
      theme = "www/bootstrap.css",
      id = "tabs",

      shiny::tabPanel(
        "Miljøvariabler",
        shiny::mainPanel(
          shiny::htmlOutput("username"),
          shiny::htmlOutput("usergroups"),
          shiny::htmlOutput("userorgid"),
          shiny::htmlOutput("useremail"),
          shiny::htmlOutput("userphone"),
          shiny::htmlOutput("userfullname"),
          shiny::htmlOutput("userregid"),
          shiny::htmlOutput("configpath"),
          shiny::tags$head(
            shiny::tags$link(rel = "shortcut icon", href = "www/favicon.ico")
          )
        )
      ),

      shiny::tabPanel(
        "Konfigurasjon",
        shiny::mainPanel(
          shiny::verbatimTextOutput("config")
        )
      ),

      shiny::tabPanel(
        "Staging",
        shiny::mainPanel(
          shiny::HTML("Hva er lurt?")
        )
      )
    )
  )
}
