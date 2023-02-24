if(!("remotes" %in% installed.packages())) install.packages('remotes')
if(!("stringi" %in% installed.packages())) remotes::install_version('stringi','1.7.8')
if(!("shiny" %in% installed.packages())) remotes::install_version('shiny','1.7.2')

library(shiny)
library(stringi)


ui <- fluidPage(
  shiny::verbatimTextOutput('out')
)

server <- function(input, output, session) {
  output$out <- renderPrint(sessionInfo())
}

shinyApp(ui, server)
