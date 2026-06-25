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

```
<!-- data/raw/        read-only raw data and licence documentation -->
<!-- data/processed/  cleaned data produced by code/02_clean.R -->
data        read-only raw data
<!-- code/            numbered R scripts (01 download → 02 clean → 03 EDA → 04 analysis) -->
<!-- docs/            rendered Quarto website output (auto-generated, do not edit) -->
Project_Proposal.qmd     W07 project proposal
<!-- report.qmd       final analysis report -->
```

## How to reproduce !!!

```r
<!-- # 1. Install dependencies -->
<!-- renv::restore()   # if using renv, otherwise install packages manually -->

# 1. Run the pipeline in order
source("code/01_download.R")
source("code/02_clean.R")
source("code/03_eda.R")
source("code/04_analysis.R")

# 3. Render the website
quarto::quarto_render()
```
