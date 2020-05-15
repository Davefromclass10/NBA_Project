library(shiny)

#Define UI

shiny::shinyUI(pageWithSidebar(
  
  #Title
  headerPanel('Denver Nuggets Post Game Breakdown'),
  
  sidebarPanel(
    selectInput('variable', 'Team:',
                list('Denver' = "DEN"))
              
  ),
  
  mainPanel(
    fluidRow(tableOutput('pointsPlot')
  )
)))
