---
title: "Project Proposal"
author: "Group 4"
date: "6/29/23"
format: pdf
---
  
### Project Proposal

# Question 1
  
  # Research Question
  
  # Data for Question 1
We will look at all predictor variables included in the data set, except for 
the variables used to identify the data points - country_name, histname, year, 
and our dependent variable v2x_corr. In other words, we would feed all these 
predictors to help build our multiple linear regression model (and find out
which top 3 or 5 predictors are most closely associated/correlated with higher
corruption level. We would split the data into training and validation sets to 
test whether our model is able to predict/estimate corruption level in nations 
in the validation set. On another note, we could also do PCA to figure out
which nations are most similar to one another in terms of all variales except
country_name, histname, year, and our dependent variable v2x_corr. Then, we
could cross-check with the variables in our multiple linear regression model
to see if the variables in both approaches overlap. 


  
  
## Question 2
  
  ### Research Question
Our second research question idea explores the relationship  between prosocial/social
behaviors and civil society index. This question is of interest because it pulls
together politics and measures of wellbeing to explore what effects civil society,
which is the area outside of business and government, such as family and community.
We want to explore how various measures of community engagement and support,
both positive and negative, predict measure civil
society scores. This will allow us to practice both clustering and regression modelling
to answer this question. We will also be able to practice cleaning and merging data.
While we cannot say for certain what relationships we expect to see, finding relationships
between the democracy and happiness index datasets is an exciting possibility.
Specific relationships we could see include a potentially negative
between civil society organization oppression, freedom to make life choices,
and wars/coups, a potentially positive relationship between social support,
participation  rate in civil society, generosity, education, and maybe
government corruption. We expect places with high civil society indexes to have 
higher amounts of things that bring people together and lower rates of things that 
bring people apart or make meeting with other people difficult. 

Alternately, we could explore predicting civil society participation instead of 
the index. We could also explore whether these predictors of civil society also predict 
happiness, which is said to be one of the reasons for participation in civil society. 


  # Data for Question 2
## Since our topic is about how civil society index be affected by prosocial behaviors, we are 
## going to use all the Freedom House scores and democracy, elections and participation indexes. 
## In the first part of the data processing, we might see the importance of each scores and indexes among 
## their corresponding categories. After choosing the siginificant factors, both supervised and 
## unsupervised tranining will be conducted by linear model and clustering. 

  