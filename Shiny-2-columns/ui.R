
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Old Faithful Geyser Data"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30)
    ),

    # Show a plot of the generated distribution
    mainPanel(
      tabsetPanel(
        tabPanel(
          "2 columns example",
          fluidRow(
            column(width = 4,
                   h2("Column #1"),
                   plotOutput("distPlot")),
            column(width = 8,
                   h2("Column #2"),
                   DT::dataTableOutput('tbl'))
                 )),
        tabPanel("Summary", verbatimTextOutput("summary")),
        tabPanel("Table", tableOutput("table"))
      )
      
    )
  )
))
