library(shiny)
library(dplyr)
library(ggplot2)


PlayerBoxScores <- read.csv(file = 'Player_BoxScores2020.csv')

Player_Traditional <- PlayerBoxScores[,c("obs","idGame","slugTeam","namePlayer","idPlayer","groupStartPosition","fgm","fga","pctFG","fg3m","fg3a","pctFG3","ftm","fta","pctFT","oreb","dreb","treb","ast","tov","stl","blk","pf","pts","plusminus")]

Player_Advanced <- PlayerBoxScores[,c('obs',"idGame","slugTeam","namePlayer","idPlayer","groupStartPosition","minExact","ortg","drtg","netrtg","pctAST","ratioASTtoTOV","ratioAST", "pctOREB","dreb","pctTREB","pctEFG","pctTS","pctUSG","pace")]

Player_Scoring <- PlayerBoxScores[,c("obs","idGame","slugTeam","namePlayer","idPlayer","groupStartPosition","minExact","pctFG2","pctFG3","pctsPTSasFG3","pctPTSasFB","pctPTSasFT","pctPTSasOffTOV","pctPTSasPaint","pctFG2MasAssisted","pctFG2MasUnassisted","pctFG3MasAssisted","pctFG3MasUnassisted","pctFGMasAssisted","pctFGMasUnassisted")]

Player_Misc <- PlayerBoxScores[,c("obs","idGame","slugTeam","namePlayer","idPlayer","groupStartPosition","minExact","ptsOffTOV","ptsSecondChance","ptsFastBreak","ptsSecondChanceOpponent","ptsFastBreakOpponent","ptsPaintOpponent","blk","blka","pf","pfd")]

Player_Usage <- PlayerBoxScores[,c("obs","idGame","slugTeam","namePlayer","idPlayer","groupStartPosition","minExact","pctUSG","pctFGMOfTeam","pctFG3MOfTeam","pctFTMOfTeam","pctFG3AOfTeam","pctFTAOfTeam","pctOREBOfTeam","pctDREBOfTeam","pctREBOfTeam","pctASTOfTeam","pctTOVOfTeam","pctSTLOfTeam","pctBLKOfTeam","pctBLKAOfTeam","pctPFOfTeam","pctPFDOfTeam")]

Player_FourFactors <- PlayerBoxScores[,c("obs","idGame","slugTeam","namePlayer","idPlayer","groupStartPosition","minExact","pctEFG","rateFTA","pctTOVTeam","pctOREB","pctEFGOpponent","rateFTAOpponent","pctTOVOpponent","pctOREBOpponent")]

Player_Tracking <- PlayerBoxScores[,c("obs","idGame","slugTeam","namePlayer","idPlayer","groupStartPosition","distMiles","mphMean","touches","passes","ast","astSecondary","fgmRimDefended","fgaRimDefended","pctFGRimDefended","orebChances","drebChances","trebChances","pctFG","fgmContested","fgaContested","pctFGContested","fgmUncontested","fgaUncontested","pctFGUncontested")]

Player_Hustle <- PlayerBoxScores[,c("obs","idGame","slugTeam","namePlayer","idPlayer","groupStartPosition","minExact","screenAssist","ptsScreenAssist","deflections","looseBallsRecoveredOffense","looseBallsRecoveredDefense","looseBallsRecovered","chargesDrawn","fg2Contested","fg3Contested","fgContested","boxOutsOffense","boxOutsDefense","boxOuts")]

shiny::shinyServer(function(input, output){
  
  
  output$contents <- renderTable({
    inFile <- input$file1
    
    read.csv(inFile$datapath, header = input$header)
  })
})
