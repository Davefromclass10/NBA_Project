library(shiny)

#Define UI

shiny::shinyUI(pageWithSidebar(
  
  #Title
  headerPanel('Denver Nuggets Post Game Breakdown'),
  
  sidebarPanel(
    fileInput('Player_BoxScores2020', "Choose CSV File",
              accept = c(
                "text/csv",
                "test/comma-separated-values,text/plain",
                ".csv")
              ),
              tags$hr(),
              selectInput('variable', 'Team:', TRUE)
              
  ),
  
  mainPanel(
    tableOutput('pointsPlot')
  )
))
