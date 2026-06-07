# survey_weighted_analysis_template.R
# Purpose: Template only. Raw SIHBS microdata are not included in this repository.

# install.packages(c("tidyverse", "survey", "srvyr", "broom"))
library(tidyverse)
library(survey)
library(srvyr)
library(broom)

# 1. Load your authorised SIHBS-derived analysis dataset
# df <- readr::read_csv("path/to/authorised_analysis_dataset.csv")

# 2. Define survey design
# design <- survey::svydesign(ids = ~1, weights = ~weight_analysis, data = df)

# 3. Weighted descriptive estimate template
# svymean(~moderate_severe_food_insecurity, design, na.rm = TRUE)

# 4. Weighted logistic regression template
# fit <- survey::svyglm(
#   moderate_severe_food_insecurity ~ climate_livelihood_shock + residence +
#     head_ever_school + poor_household + idp_household + owns_livestock_any +
#     drought_livestock_loss + hhsize + region,
#   design = design,
#   family = quasibinomial()
# )
#
# broom::tidy(fit, conf.int = TRUE) %>%
#   mutate(
#     odds_ratio = exp(estimate),
#     conf_low_or = exp(conf.low),
#     conf_high_or = exp(conf.high)
#   )
