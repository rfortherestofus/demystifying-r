
# Load Packages -----------------------------------------------------------

library(tidyverse)
library(hrbrthemes)
library(janitor)

theme_set(theme_ipsum(base_family = "Karla",
                      axis_title_family = "Karla"))

# Import Data -------------------------------------------------------------

nhanes <- read_csv("data/nhanes.csv")

nhanes

# Data Analysis -----------------------------------------------------------

nhanes %>% 
  count(education)

nhanes %>% 
  group_by(education) %>% 
  summarize(days_active = mean(phys_active_days, na.rm = TRUE)) %>% 
  mutate(days_active = round(days_active, 1)) %>% 
  drop_na(education) 


# Data Visualization ------------------------------------------------------

nhanes %>% 
  group_by(education) %>% 
  summarize(days_active = mean(phys_active_days, na.rm = TRUE)) %>% 
  mutate(days_active = round(days_active, 1)) %>% 
  drop_na(education) %>% 
  ggplot(aes(education, days_active)) +
  geom_col() +
  labs(title = "Physical Activity by Education Level",
       y = "Number of Days Active",
       x = NULL)
