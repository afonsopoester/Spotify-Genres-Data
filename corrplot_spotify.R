library(dplyr)
library(corrplot)
library(RColorBrewer)

genres <- read.csv("genres_v2.csv/genres_v2.csv")

#A dataset of continuous variables
#An interesting question in these situations might be the correlation
#So we make a corrplot

genres <- genres %>%
  select(danceability, energy, key, loudness, mode,
         speechiness, acousticness, instrumentalness,
         liveness, valence, tempo, duration_ms, time_signature)

M <- cor(genres)
corrplot(M, method = "pie", type = "upper", order = "AOE",
         tl.cex = 0.75, tl.col = "black",
         diag = F, col = COL2("PiYG"))