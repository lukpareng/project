# 1. list requirements early
# (i.e., load libraries at the beginning)
library(here)
library(tidyverse)
library(lubridate)

#----load-inflation----
# 2. use relative locations
# (i.e., relative paths instead absolute, names instead of indices)
games_raw <- readr::read_csv(
  # directly download and load data
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-03-16/games.csv"
)

#----transform-inflation----
# 3. document relevant information
# (i.e., variable names are documentation + comments)
games <- mutate(games_raw, date = str_c(month, "_", year) %>% # concatenate month and year
                  my()) # my = month year -> convert to date


# use a function without loading the package:
# package::function
usethis::use_git_config(
  user.name = "lukpareng", # <-- change to your name
  user.email = "lukas.engel@unibas.ch", # <-- and your email
  init.defaultBranch = "main") # <-- not necessary but kinder than 'master'

usethis::use_git()
