#### Preamble ####
# Purpose : Simulate the fertility rate, total (births per woman) data for India between 1960-2021
# Author : Jagpreet Singh
# Date : 30 March, 2024
# Contact : jagpreetsingh.singh@mail.utoronto.ca
# License : MIT
# Prerequisite : install.packages("tidyverse") should be run if this package is not pre-installed


#### Workspace Setup ####

library(tidyverse)

# Set seed for reproducibility
set.seed(123)

# Generate years from 1960 to 2021
years <- seq(1960, 2021)

# Generate fertility rates with descending trend and fluctuations
fertility_rate <- seq(5.921, 2.031, length.out = length(years)) + rnorm(length(years), mean = 0, sd = 0.09)

# Round fertility rates to three decimal points
fertility_rate <- round(fertility_rate, 3)

# Create data frame
simulated_data <- data.frame(Year = years, Fertility_Rate = fertility_rate)

# Save the simulated data to a CSV file
write.csv(simulated_data, file = "output/data/simulated_data_fertility_rate.csv", row.names = FALSE)



