
library(tidyverse)
library(scales)
library(knitr)
library(patchwork)


df_raw <- read_csv("Data/Social_Media_Impact_on_Daily_Lives.csv")


df <- df_raw %>% 
  rename(
    idx             = `...1`,
    name            = `Enter your name`,
    age             = `Enter your age (Ex: 20)`,
    gender          = `What is your gender`,
    profession      = `What is your profession?`,
    prof_hours      = `On an average how many hours a day you spend on your profession?`,
    platforms       = `What social networking sites do you use?`,
    social_hours    = `On an average how many hours a day do you spend on these sites?`,
    family_hours    = `On an average how many hours a day do you spend with your family?`,
    why_use         = `Why do you use these social networking sites?`,
    benefits        = `What are personal benefits of  using social networking sites?`,
    when_access     = `When do you access social media websites?`,
    privacy_effect  = `Do you think privacy policies are effective in social networking sites?`,
    ad_influence    = `Does social media advertising influence the purchase of your product?`,
    forget_time     = `When you use social media did you forget about time?`,
    addicted        = `Do you consider yourself addicted to social media?`
  ) %>% 
  mutate(profession = if_else(profession == "male", NA_character_, profession))


hour_midpoint <- function(x) {
  case_when(
    x == "0-2"  ~ 1,    x == "1-2"  ~ 1.5,  x == "2-4"  ~ 3,
    x == "4-5"  ~ 4.5,  x == "4-6"  ~ 5,    x == "5-6"  ~ 5.5,
    x == "6-8"  ~ 7,    x == "6+"   ~ 7,    x == "8+"   ~ 9,
    TRUE        ~ NA_real_
  )
}

df <- df %>% 
  mutate(
    social_hours_n = hour_midpoint(social_hours),
    family_hours_n = hour_midpoint(family_hours),
    addicted_bin   = case_when(
      addicted == "yes"      ~ 1,
      addicted == "no"       ~ 0,
      addicted == "not sure" ~ NA_integer_
    )
  )