library(shiny)


PlayerBoxScores <- read.csv(file = 'Player_BoxScores2020.csv')

Player_Traditional <- PlayerBoxScores[,c("obs","idGame","slugTeam","namePlayer","idPlayer","groupStartPosition","fgm","fga","pctFG","fg3m","fg3a","pctFG3","ftm","fta","pctFT","oreb","dreb","treb","ast","tov","stl","blk","pf","pts","plusminus")]
#Define UI

shiny::shinyUI(pageWithSidebar(
  
  #Title
  headerPanel('Denver Nuggets Post Game Breakdown'),
  
  sidebarPanel(
    checkboxGroupInput(
      inputId = 'slugTeam',
      label = 'Team',
      choices = Player_Traditional$slugTeam,
      inline = FALSE
    )
  ),
  
  mainPanel(
    fluidRow(tableOutput('pointsPlot')
  )
)))
