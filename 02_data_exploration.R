library(tidyverse)
library(haven)

#import data

nfhs <- read_dta('IAHR52FL.dta')

# select variable ranges

nfhs <- select(nfhs, hhid:shstruc)

# plotting the histogram

ggplot(data = nfhs) +
  geom_histogram(mapping = aes(x = hv009), binwidth = 1)

# creating a new data frame

nfhs <- mutate(nfhs, urban = hv025 == 1)

urban <- filter(nfhs, hv025 == 1)

# creating a new plot with urban

ggplot(data = urban) +
  geom_boxplot(mapping = aes(x = factor(hv026), y = hv009))

                 