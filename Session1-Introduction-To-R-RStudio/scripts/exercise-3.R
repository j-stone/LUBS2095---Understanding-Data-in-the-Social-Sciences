#### Script 1 for workshop 1
library(dplyr)
library(lubridate)
library(ggplot2)
fifaRankings <- read.csv("data/fifa_ranking.csv")
fifaRankings$rank_date <- as.Date(fifaRankings$rank_date)

grouped_avg_rank <- fifaRankings %>% group_by(confederation,rank_date) %>% 
  summarise(avgRank = mean(rank))

plt <- ggplot(data = grouped_avg_rank, aes(x = rank_date, 
                                           y = avgRank))
print(plt + geom_line(aes(color = confederation)))
