library(shiny)


# Sources

source('BoxScores_Traditional.r')


shiny::shinyUI(pageWithSidebar(
  
  #Title
  headerPanel('Denver Nuggets Post Game Breakdown'),
  
  sidebarPanel(
    selectInput('variable', 'Team:',
                list('Denver' = 'DEN'))
  ),
  
  mainPanel(
    fluidRow(tableOutput('pointsPlot')
  )
)))
