---
title: "Data for Final Project: Predicting Civil Society"
format: gfm
execute: 
  error: true
  message: false
  warning: false
  eval: true
---

### Codebook

Data is attributed to the Varieties of Democracy (V-Dem) Project (https://doi.org/10.23696/vdemds20)
which provides a multidimensional perspective on democracy beyond elections by 
considering measures including electoral, participatory, egalitarian, deliberative,
and liberal principles in data collection and the Sustainable Development
Solutions Network which aggregates data from the Gallup World Poll on happiness,
GDP per capita, social support, healthy life expectancy, freedom, generosity, 
and corruption (https://worldhappiness.report/ed/2023/).
Further information on the measures used in V-Dem specifically is found in the V-Dem
codebook, found here: https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3802627. 
Measures for the happiness data were found in the 2023 statistical appendix, found here https://happiness-report.s3.amazonaws.com/2023/WHR+23_Statistical_Appendix.pdf. 


```{r}
#| echo: false
#| output: asis
library(tidyverse)
readRDS(file = "civil_society.rds")
cs <- cs

codebook <- tibble(
  Variables = paste0("`", names(cs), "`"), # makes it code script when rendered
  Description = c("Country Name",
                  "Year",
                  "Government Repression of Civil Society; 0-4 with 0 being no repression and 4 is very high", 
                  "Presence of Civil War; 1 = yes, 0 = no",
                  "Presence of Coup; 1 = yes, 0 = no",
                  "Participation in Democracy, measures the active level of citizen participation in democracy by considering suffrage, direct democracy, engagement with civil society organizations, and subnational elected bodies; 0-1 from low to high",
                  
                  "Avg. Years of Education in People 15 and Older",
                  
                  "Government Corruption Index; 0-1 from low to high corruption",
                  
                  "Civil Society Participation, includes if organizations are consulted by governments, involvment of women participants, and the overall number participating; 0-1 from low to high participation",
                  
                  "Civil Society Index, includes repression of civil society, number/types of civil society organizations, and how long these organizations last; 0-1 from low to high strength of civil society",
                  
                  "Social Support, defined as having someone to count on in timesof trouble, national average of binary response (0 = no, 1 = yes) in response to: If you were in trouble, do you have relatives or friends you can count on to help youwhenever you need them, or not?",
                  
                  "Freedom to Make Life Choices, national average of binary response (0 = no, 1 = yes) to: Are you satisfied or dissatisfied with your freedom to choose what you do with your life?",
                  
                  "Generosity, the residual of regressing national average of response to 'Have you donated money to a charity in the past month?' on GDP per capita"
                  ),
  Type = map_chr(cs, typeof))

knitr::kable(codebook)
```