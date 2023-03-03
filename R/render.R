library(tidyverse)
library(lubridate)
library(here)
library(rmarkdown)
library(pagedown)
library(fs)


# Group name --------------------------------------------------------------

# Add group name here. It will be used below for names of things. 

group_name <- "rin3-spring-2023"

# Render slides -----------------------------------------------------

render(input = here::here("slides", "slides.Rmd"), 
       output_dir = here::here("slides"),
       output_file = str_glue("slides-{group_name}.html"),
       clean = TRUE)

# file_delete(here::here("slides", "slides.html"))


# Convert slides to PDF ----------------------------------------------------------

# chrome_print(str_glue("slides/slides-{group_name}.html"), 
#              str_glue("slides/slides-{group_name}.pdf"),
#              timeout = 180)

# Render report -----------------------------------------------------

render(input = "report.Rmd", 
       output_dir = here::here("reports"),
       output_file = str_glue("report-{group_name}.html"),
       clean = TRUE)

# file_delete(here::here("report.html"))


