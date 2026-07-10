# Group Project Advanced Statistical Programming using R

> Replace this with a short description of your project and dataset.
>
> Social Media Impact on Daily Lives

## Research Questions

1. Can we predict that someone considers themselves addicted to social media?
2. Do people with higher social media screen time spend less time with their family?





## Dataset

- **Source:**  [URL](https://data.mendeley.com/datasets/9s2nmbxkrs/2/files/6647758b-2eca-4158-a49e-a82611be62f0) 
- **Licence:** CC BY 4.0 
- **Description:** This dataset explores the impact of social media on daily life, based on a survey of approximately 522 respondents. It captures variables such as screen time, perceived personal benefits, self-reported social media addiction, time spent with family, influence of advertising, and respondents' profession. The data is primarily categorical, with a few numeric variables.  

## Group Members

| Name | GitHub username |
|------|----------------|
|  Louisa DJEBROUN    |  LouisaDj              |
|  Tiago HAGEN    |   tiago-hagen             |
|  Marco ANTON    |   mAnton675             |
|  Nizami AZIZOV    |   nizami1878             |


## Repository Structure


<!-- data/raw/        read-only raw data and licence documentation -->
<!-- data/processed/  cleaned data produced by code/02_clean.R -->
<!-- code/            numbered R scripts (01 download → 02 clean → 03 EDA → 04 analysis) -->
<!-- docs/            rendered Quarto website output (auto-generated, do not edit) -->
<!-- report.qmd       final analysis report -->

```
data        read-only raw data
Project_Proposal.qmd     W07 project proposal
```

## How to reproduce !!!


<!-- # 1. Install dependencies -->
<!-- renv::restore()   # if using renv, otherwise install packages manually -->

```r
# 1. Run the pipeline in order
source("code/01_download.R")
source("code/02_clean.R")
source("code/03_eda.R")
source("code/04_analysis.R")

# 3. Render the website
quarto::quarto_render()
```
## Exercise 2.5: Share one improvement

**What changed and why:**
I improved the advertising plot by using a colorblind-safe palette (`viridis`) and updating the title to state the main finding, which makes the conclusion instantly clear to the reader.

### Before
```r
p3 <- df %>%
  count(
    gender = gender,
    advertising_influence = ad_influence
  ) %>%
  group_by(gender) %>%
  mutate(percent = n / sum(n) * 100) %>%
  ggplot(aes(
    x = advertising_influence,
    y = percent,
    fill = gender
  )) +
  geom_col(position = "dodge") +
  labs(
    title = "Influence of Social Media Advertising by Gender",
    x = "Advertising influence on purchase decision",
    y = "Percentage within gender group",
    fill = "Gender"
  ) +
  theme_minimal()
```

### After
```r
#| label: fig-ad-influence
#| fig-cap: "Social media advertising shows a similar distribution of influence on purchasing decisions for both male and female respondents."
#| fig-alt: "A grouped bar chart comparing the influence of social media advertising on purchasing decisions between men and women. The distributions are very similar across all categories."

df %>%
  count(gender, ad_influence) %>%
  group_by(gender) %>%
  mutate(percent = n / sum(n) * 100) %>%
  ggplot(aes(x = ad_influence, y = percent, fill = gender)) +
  geom_col(position = "dodge") +
  #  Colorblind-safe color palette
  scale_fill_viridis_d(option = "cividis", end = 0.8) +
  theme_minimal() +
  labs(
    #  Title states the finding, not just the variables
    title = "Advertising influences purchasing decisions similarly across genders",
    subtitle = "Self-reported influence levels by gender",
    x = NULL, 
    y = "Proportion within gender group (%)",
    fill = "Gender",
    caption = "Data Source: Social Media Impact on Daily Lives (2025)"
  )
```