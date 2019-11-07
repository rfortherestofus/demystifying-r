library(tidyverse)
library(lubridate)
library(here)
library(rmarkdown)
library(pagedown)
library(fs)

# Render report -----------------------------------------------------

render(input = "report.Rmd", 
       output_dir = here::here("reports"),
       output_file = paste0("report-", now(), ".html"),
       clean = T)

# file_delete(here::here("report.html"))

# Render slides -----------------------------------------------------

render(input = here::here("slides", "slides.Rmd"), 
       output_dir = here::here("slides"),
       output_file = "slides-vancouver-2019.html",
       clean = T)

# file_delete(here::here("slides", "slides.html"))

# Convert to PDF ----------------------------------------------------------

chrome_print(here::here("slides", "slides-vancouver-2019.html"), 
             here::here("slides", "slides-vancouver-2019.pdf"))

