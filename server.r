library(shiny)
library(dplyr)
library(ggplot2)

source('BoxScores_Traditional.r')

shiny::shinyServer(function(input, output){
  
  current_team = reactive({
    req(input$slugTeam)
  })
  
  output$pointsPlot <- renderTable(BoxScores_Traditional2020)
})
