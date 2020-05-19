library(shiny)
library(dplyr)
library(ggplot2)



shiny::shinyServer(function(input, output){
  
  current_team = reactive({
    req(input$slugTeam)
  })
  
  output$pointsPlot <- renderTable(Player_Traditional)
})
