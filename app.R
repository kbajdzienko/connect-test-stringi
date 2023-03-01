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

# Test that box works
box::use(tibble)
box::help(tibble$tibble)


ui <- fluidPage(
  shiny::verbatimTextOutput('out')
)

server <- function(input, output, session) {
  output$out <- renderPrint(sessionInfo())
}

shinyApp(ui, server)
