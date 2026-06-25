# Group Project Advanced Statistical Programming using R

> Replace this with a short description of your project and dataset.
>
> Social Media Impact on Daily Lives

## Research Questions

1. Can we predict that someone considers themselves addicted to social media?
2. <!-- Do people with higher social media screen time spend less time with their family? -->

3. <!-- Do younger people spend more time on social media?**\ -->
4. <!-- Would people with higher screen time consider themselves addicted? -->
5. <!-- Does the perceived influence of social media advertising on purchasing decisions differ between men and women? -->






## Dataset

- **Source:** <!-- [URL or citation](https://data.mendeley.com/datasets/9s2nmbxkrs/2/files/6647758b-2eca-4158-a49e-a82611be62f0) -->
- **Licence:** <!-- CC BY 4.0 -->
- **Description:** <!-- The dataset contains `r nrow(df)` rows and `r ncol(df_raw)` columns. Each row represents one survey respondent. -->

## Group Members

| Name | GitHub username |
|------|----------------|
|  Louisa DJEBROUN    |  LouisaDj              |
|  Tiago HAGEN    |   tiago-hagen             |
|  Marco ANTON    |                |
|  Nizami AZIZOV    |                |


## Repository Structure !!!!!!!!!!!

```
data/raw/        read-only raw data and licence documentation
data/processed/  cleaned data produced by code/02_clean.R
code/            numbered R scripts (01 download → 02 clean → 03 EDA → 04 analysis)
docs/            rendered Quarto website output (auto-generated, do not edit)
proposal.qmd     W07 project proposal
report.qmd       final analysis report
```

## How to reproduce !!!!!!!!!!!!

```r
# 1. Install dependencies
renv::restore()   # if using renv, otherwise install packages manually

# 2. Run the pipeline in order
source("code/01_download.R")
source("code/02_clean.R")
source("code/03_eda.R")
source("code/04_analysis.R")

# 3. Render the website
quarto::quarto_render()
```
