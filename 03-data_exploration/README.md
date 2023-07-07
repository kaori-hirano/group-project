---
title: "Codebook for Group 4 Project"
format: gfm
execute: 
  error: true
  message: false
  warning: false
  eval: true
---

Player salary data was scraped from the MLS Players' Association [website](https://mlsplayers.org/resources/salary-guide).
Player statistics were scraped from [https://fbref.com/](https://fbref.com/).

Data is attributed to the Varieties of Democracy (V-Dem) Project (https://doi.org/10.23696/vdemds20) and the Sustainable Development Solutions Network which aggregates data from the Gallup World Poll on happiness, GDP per capita, social support, healthy life expectancy, freedom, generosity, and corruption (https://worldhappiness.report/ed/2023/)

### Codebook

```{r} 
#| echo: false
#| output: asis
library(tidyverse)
mls22 <- read_csv("mls22.csv")

codebook <- tibble(
  Variables = paste0("`", names(mls22), "`"),
  Description = c("Player's full name",
                  "Player's nation of birth or registered FIFA nation",
                  "Position played by player (can be multiple; if so, separated by commas)",
                  "Player's age",
                  "Number of games played in 2022 MLS season",
                  "Number of games started in 2022 MLS season",
                  "Number of minutes played in 2022 MLS season",
                  "How many 90 minutes player completed. This column is a linear combination of the `Min` column. `nineties` = `Min`/90",
                  "Goals scored in 2022 MLS season",
                  "Assissts in 2022 MLS season",
                  "Penalty kick goals scored in 2022 MLS season",
                  "Penalty kicks attempted in the 2022 MLS season",
                  "Number of yellow cards received in 2022 MLS season",
                  "Number of red cards received in 2022 MLS season",
                  "Expected number of goals in 2022 MLS season (basically prediction from another model)",
                  "Expected number of assists in 2022 MLS season",
                  "Non-penalty expected goals in 2022 MLS season",
                  "Progressive carries by player in 2022 MLS season",
                  "Progressive passes by player in 2022 MLS season",
                  "Progressive passes received by player in 2022 MLS season",
                  "Goals scored per 90 minutes in 2022 MLS season",
                  "Assists per 90 minutes in 2022 MLS season",
                  "Expected goals per 90 minutes in 2022 MLS season",
                  "Expected assists per 90 minutes in 2022 MLS season",
                  "Non-penalty expected goals per 90 minutes in 2022 MLS season",
                  "Player's team",
                  "Current annualized base salary in hundred thousands of dollars. Includes base salary and all signing and guaranteed bonuses annualized over the term of the player's contract.",
                  "Annualized average guaranteed compensation in hundred thousands of dollars. Base salary plus marketing bonuses and any agent's fees.")
)

knitr::kable(codebook)
```
