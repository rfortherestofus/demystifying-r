library(tidyverse)
library(lubridate)
library(here)
library(rmarkdown)



# Render report -----------------------------------------------------

render(input = "report.Rmd", 
       output_dir = here("reports"),
       output_file = paste0("report-", now(), ".html"),
       clean = T)


# Render slides -----------------------------------------------------

render(input = here("slides", "slides.Rmd"), 
       output_dir = here("slides"),
       output_file = "slides-aea.html",
       clean = T)


