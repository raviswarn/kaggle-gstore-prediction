#Disable Scientific Notation

# Author: Raveendra Swarna

options(scipen=999)
library(jsonlite)
library(tidyjson)
library(dplyr)

#Read in the Data
test_data <- read.csv('test.csv', stringsAsFactors = FALSE)
train_data <- read.csv('train.csv', stringsAsFactors = FALSE)
sample_submission <- read.csv('sample_submission.csv', stringsAsFactors = FALSE)

# Get totals
for (visit in train_data$totals[1000:1001]){
  print(fromJSON(visit)$transactionRevenue)
}