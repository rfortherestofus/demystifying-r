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
       clean = TRUE)

# file_delete(here::here("report.html"))

# Render slides -----------------------------------------------------

render(input = here::here("slides", "slides.Rmd"), 
       output_dir = here::here("slides"),
       output_file = "slides-iea.html",
       clean = TRUE)

# file_delete(here::here("slides", "slides.html"))

# Convert to PDF ----------------------------------------------------------

chrome_print(here::here("slides", "slides-iea.html"), 
             here::here("slides", "slides-iea.pdf"))

