library(broom)
library(tidyr)
library(janitor)

BoxScores2020 <- read.csv("C:/Users/stram/Documents/Elements/NBA_Data/Player_BoxScores2020.csv")
BoxScores_Traditional2020 <- BoxScores2020[,c("X","idGame","slugTeam","namePlayer","idPlayer","groupStartPosition","fgm","fga","pctFG","fg3m","fg3a","pctFG3","ftm","fta","pctFT","oreb","dreb","treb","ast","tov","stl","blk","pf","pts","plusminus")]

BoxScores_Traditional2020 <- janitor::clean_names(BoxScores_Traditional2020,
                                                  'snake')


teams <- unique(as.character(BoxScores_Traditional2020$slug_team))