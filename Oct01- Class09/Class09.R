#Class Meeting 9 Tidy Data and Pivoting
library(gapminder)
library(tidyverse)
library(dplyr)
library(magrittr)
library(qwraps2)
library(ggplot2)
library(rmarkdown)
suppressPackageStartupMessages(library(tidyverse))
suppressPackageStartupMessages(library(gapminder))
suppressPackageStartupMessages(library(lubridate))
suppressPackageStartupMessages(library(tsibble))
suppressPackageStartupMessages(library(here))
suppressPackageStartupMessages(library(DT))

haireye %>% 
  DT::datatable(rownames = FALSE)


haireye %>% 
  tidyr::uncount(n) %>% 
  DT::datatable(rownames = FALSE)

haireye_untidy