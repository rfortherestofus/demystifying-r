library(tidyverse)
library(lubridate)
library(here)
library(rmarkdown)



# Render report -----------------------------------------------------

render(input = "report.Rmd", 
       output_dir = here("reports"),
       output_file = paste0("report-", now(), ".html"),
       clean = T)


