# Climate_change

## 📌 Title:
Visualizing Rising Heatwave Trends Using Surface Temperature Anomalies (1970–2023)

## 🔍 1. Overview
This project explores the increase in heat-related climate anomalies using global surface temperature data from 1970 to 2023. The aim is to identify countries showing accelerated warming trends—often associated with more frequent or intense heatwaves.

## 🎯 2. Objective
To visualize and analyze surface temperature anomalies over the last five decades to understand how climate patterns have changed, with an emphasis on heatwave-related warming in countries like India, USA, Australia, and Brazil.

## 🌐 3. Dataset
Source: Our World in Data

Content: Surface temperature anomalies by country and year

Years Covered: 1970–2023

Metric: Anomaly in degrees Celsius (relative to historical baseline)

## 🧰 4. Tools & Environment
Language: R

Libraries: tidyverse, ggplot2, readr

Visualization Tool: ggplot2

Version Control: Git + GitHub

OS: Windows, with PowerShell and Git CLI

## 🧹 5. Data Cleaning & Preprocessing
Unnecessary metadata columns removed

Converted wide-format data to long format (pivot_longer)

Filtered to include only relevant countries and valid numeric anomaly data

Removed NAs and cleaned formatting for plotting

## 📊 6. Visualization
Created a line chart showing temperature anomalies from 1970 to 2023 for selected countries. This chart allows for comparative analysis of temperature rise patterns.

Visualization Includes:

Time (X-axis)

Temperature Anomaly (Y-axis)

Countries (Color-coded lines)

A dashed horizontal line at 0°C for reference

📎 See plots/heatwave_trend.png for output.

## 🔎 7. Key Findings
India and Australia show a consistent warming trend post-1990s.

USA and Brazil show sharp variations but a net rise in anomalies.

All selected countries have anomalies trending above 0°C in recent years — a strong indicator of more frequent heatwave conditions.

## 📌 8. Conclusion
This analysis highlights the global nature of rising temperatures and the growing concern of heatwaves. By visualizing long-term anomaly trends, we can better inform climate response strategies and raise awareness of localized warming effects.

## 🚀 9. Future Enhancements
Incorporate satellite data or humidity indexes to strengthen heatwave analysis.

Use shiny or quarto to build an interactive version of the visualization.

Add historical data pre-1970 for context.

## 🧩 10. Appendix
Repository: GitHub - SHIS22proxy/Climate_change
Script: climate_heatwave.R
Plot Output: plots/heatwave_trend.png

