library(shiny)

#Define UI

shiny::shinyUI(pageWithSidebar(
  
  #Title
  headerPanel('Denver Nuggets Post Game Breakdown'),
  
  sidebarPanel(),
  
  mainPanel()
))
