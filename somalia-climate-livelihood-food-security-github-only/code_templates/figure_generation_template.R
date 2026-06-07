# figure_generation_template.R
# Purpose: Template for recreating simple derived-output figures from aggregated CSV files.
# Raw SIHBS microdata are not included.

library(tidyverse)

# Residence inequality chart example
residence <- readr::read_csv("derived_outputs/residence_summary.csv")

plot_df <- residence %>%
  pivot_longer(
    cols = c(food_insecurity_percent, shock_percent, erosive_coping_percent, severe_gap_percent),
    names_to = "indicator",
    values_to = "percent"
  )

ggplot(plot_df, aes(x = indicator, y = percent, fill = residence)) +
  geom_col(position = position_dodge(width = 0.8)) +
  labs(x = NULL, y = "Weighted estimate (%)", fill = "Residence") +
  theme_minimal(base_size = 11)
