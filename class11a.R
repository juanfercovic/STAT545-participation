library("tidyverse")
library("gapminder")

gapminder_csv <- read_csv(".gapminder_sum")

view(gapminder_sum)



remove(list = ls())


library("here")
#platform agnostic, dir-structure agnostic
read_csv(here::here("gapminder_sum.csv"))

write_csv(here::here("gapminder_sum.csv"), append = FALSE)


## read excel file
### 




data_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"
file_name <- basename()

download.file(url = data_url,
              destfile = here::here("GreatestGivers.xls"))


library(readxl) # package to read an excel file

philantropist <- read_excel(here::here("GreatestGivers.xls"), trim_ws = TRUE)


view(philantropist)
head(philantropist)


#New  file

mri_file <- here("Firas-MRI.xlsx")
mri <- read_excel(mri_file, range = "A1:L12")

mri <- mri[,-10]

mri <- mri %>%
  pivot_longer(cols = 'Slice 1':'Slice 8', 
               names_to = 'slice_no',
               values_to = 'value')

view(mri)









