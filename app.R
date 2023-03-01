library(remotes)
library(shiny)
library(reactable)
library(waiter)
library(dplyr)
library(stringr)
library(glue)
library(lubridate)
library(DBI)
library(ggplot2)
library(plotly)
library(shiny.router)
library(shiny.fluent)
library(shinyDataFilter)
library(reactable)
library(box)


ui <- fluidPage(
  shiny::verbatimTextOutput('out')
)

server <- function(input, output, session) {
  output$out <- renderPrint(sessionInfo())
}

shinyApp(ui, server)
