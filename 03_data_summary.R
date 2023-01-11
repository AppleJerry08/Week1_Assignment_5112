library(tidyverse)
library(haven)

# trying to get data summary

urban %>%
  group_by(hv026) %>%
  count()
urban %>%
  group_by(hv026) %>%
  summarise('Average household members' = mean(hv012)

            