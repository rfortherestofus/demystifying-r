library(tidyverse)
library(lubridate)
library(here)
library(rmarkdown)
library(webshot)
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
       output_file = "slides-bay-area-2019.html",
       clean = T)

# file_delete(here::here("slides", "slides.html"))

# Convert to PDF ----------------------------------------------------------

webshot(here::here("slides", "slides-aea.html"), 
        here::here("slides", "slides-aea.pdf"),
        vwidth = 1600,
        vheight = 900) 


