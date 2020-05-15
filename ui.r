library(shiny)

#Define UI

shiny::shinyUI(pageWithSidebar(
  
  #Title
  headerPanel('Denver Nuggets Post Game Breakdown'),
  
  sidebarPanel(
    checkboxGroupInput(
      inputId = 'slugTeam',
      label = 'Team',
      choices = slugTeam,
      inline = FALSE
    )
  ),
  
  mainPanel(
    fluidRow(tableOutput('pointsPlot')
  )
)))
