library(shiny)


# Sources

source('BoxScores_Traditional.r')


shiny::shinyUI(pageWithSidebar(
  
  #Title
  headerPanel('Denver Nuggets Post Game Breakdown'),
  
  sidebarPanel(
    checkboxGroupInput(
      inputId = 'slugTeam',
      label = 'Team',
      choices = BoxScores_Traditional2020$slug_team,
      inline = FALSE
    )
  ),
  
  mainPanel(
    fluidRow(tableOutput('pointsPlot')
  )
)))
