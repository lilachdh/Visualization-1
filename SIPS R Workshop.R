# SIPS R Workshop

# Important to share our data and code, but also the packages (and its versions) we may use.
# Code may break, packages update, etc.

library(ggplot2)
library(tidyverse)

# rtweet package: extracts tweets

full_trains <- read_csv(file.choose())
View(full_trains)
names(full_trains) #journey_time_avg

full_trains %>% 
  ggplot(aes(x = journey_time_avg)) +
  geom_histogram(alpha = .5, bins = 20) +
  labs(x = "Journey Time (mins)", y = "Number of Instances", 
       title = "Histogram of Average Journey Time for trains on the SNCF Network")
  
