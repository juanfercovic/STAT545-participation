#Class Meeting 9 Tidy Data and Pivoting
library(tidyverse)

datasets::HairEyeColor

haireye %>% 
  DT::datatable(rownames = FALSE)


haireye %>% 
  tidyr::uncount(n) %>% 
  DT::datatable(rownames = FALSE)

haireye_untidy

datasets::iris2

tibble(x = 1:6,
       y = min(x))

tibble(x = 1:6,
       y = 1:2)