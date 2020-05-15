library(shiny)

#Define UI

shiny::shinyUI(pageWithSidebar(
  
  #Title
  headerPanel('Denver Nuggets Post Game Breakdown'),
  
  sidebarPanel(
    selectInput('variable', 'Team:',
                list(unique(Player_BoxScores2020$slugTeam)))
              
  ),
  
  mainPanel(
    fluidRow(tableOutput('pointsPlot')
  )
)))
