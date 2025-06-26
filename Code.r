#installing Libraries
library(tidyverse)
library(ggplot2)
library(dplyr)
library(readr)
library(tidyr)

#load the data
heat_data <- read_csv("E:/OneDrive/Shishir/CC/Climate_change/surface temperature anomalies by year.csv")
glimpse(heat_data)

# Rename the first column for clarity
names(data)[1] <- "Country"

# Select only the year columns (those that are numeric)
year_cols <- names(data)[sapply(names(data), function(x) grepl("^\\d{4}$", x))]

# Filter to Country and year anomaly data
data_yearly <- data %>% select(Country, all_of(year_cols))

# Convert to long format
data_long <- data_yearly %>%
  pivot_longer(-Country, names_to = "Year", values_to = "Anomaly") %>%
  mutate(
    Anomaly = as.numeric(Anomaly),
    Year = as.integer(Year)
  ) %>%
  filter(!is.na(Anomaly))


# Select representative countries
selected_countries <- c("India", "United States of America", "Australia", "Brazil")
data_plot <- data_long %>% filter(Country %in% selected_countries)

# Plot the anomalies
plot <- ggplot(data_plot, aes(x = Year, y = Anomaly, color = Country)) +
  geom_line(size = 1.2) +
  geom_hline(yintercept = 0, linetype = "dashed", color = "grey") +
  labs(
    title = "Temperature Anomalies Over Time (1970–2023)",
    x = "Year",
    y = "Temperature Anomaly (\u00B0C)"
  ) +
  theme_minimal()

# Save the plot to 'plots/' folder
ggsave("plots/heatwave_trend.png", plot, width = 10, height = 6, dpi = 300)
