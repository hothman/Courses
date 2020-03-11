library(tidyverse)
library(magrittr)
library(bigrquery)
library(caret)

con <- DBI::dbConnect(drv = bigquery(),
                      project = "learnclinicaldatascience")

diabetes <- tbl(con, "course3_data.diabetes_goldstandard")

# splitting the dataset to training and testing 
# collect() tells R to download the data from bigquery 

training <- diabetes %>% collect() %>% sample_n(80)

# To create our testing population we can just invert this list.
testing <- diabetes %>% 
  filter(!SUBJECT_ID %in% training_population$SUBJECT_ID)


## getStats(df, predicted, reference)
getStats <- function(df, ...){
  df %>%
    select_(.dots = lazyeval::lazy_dots(...)) %>%
    mutate_all(funs(factor(., levels = c(1,0)))) %>% 
    table() %>% 
    confusionMatrix()
}