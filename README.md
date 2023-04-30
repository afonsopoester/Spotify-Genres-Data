# correlation_spotify

#Correlation of spotify variables

This is a code using a dataset of spotify songs available at: 
https://www.kaggle.com/datasets/mrmorj/dataset-of-songs-in-spotify?select=genres_v2.csv

```{r}
#Load Libraries
library(dplyr)
library(corrplot)
library(RColorBrewer)  
```


```
genres <- read.csv("genres_v2.csv/genres_v2.csv")
```

A dataset of continuous variables
An interesting question in these situations might be the correlation
So we make a corrplot

```
genres <- genres %>%
  select(danceability, energy, key, loudness, mode,
         speechiness, acousticness, instrumentalness,
         liveness, valence, tempo, duration_ms, time_signature)

M <- cor(genres)
corrplot(M, method = "pie", type = "upper", order = "AOE",
         tl.cex = 0.75, tl.col = "black",
         diag = F, col = COL2("PiYG"))
```

We see almost no correlation

