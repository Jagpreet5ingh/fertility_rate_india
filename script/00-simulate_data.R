#### Preamble ####
# Purpose : Simulate the adult female literacy rate data and the fertility rate, total (births per woman) data for India between 1960-2021
# Author : Jagpreet Singh
# Date : 30 March, 2024
# Contact : jagpreetsingh.singh@mail.utoronto.ca
# License : MIT
# Prerequisite : install.packages("tidyverse") should be run if this package is not pre-installed


#### Workspace Setup ####

library(tidyverse)

# Set seed for reproducibility
set.seed(123)

# Generate empty data frame
simulated_data <- data.frame(Year = 1960:2021, Literacy_Rate = "", Fertility_Rate = "")

# Assign values to specific years for Literacy Rate
years_with_values_literacy <- c(1981, 1991, 2001, 2006, 2011)
num_years_literacy <- length(years_with_values_literacy)
values_literacy <- round(runif(num_years_literacy, min = 25, max = 60), 5)
simulated_data$Literacy_Rate[simulated_data$Year %in% years_with_values_literacy] <- values_literacy

# Generate fertility rates with descending trend and fluctuations
fertility_rate <- seq(5.921, 2.031, length.out = nrow(simulated_data)) + rnorm(nrow(simulated_data), mean = 0, sd = 0.005)
fertility_rate <- round(fertility_rate, 3)

# Fill in the Fertility_Rate column
simulated_data$Fertility_Rate <- fertility_rate

# Save the simulated data to a CSV file
write.csv(simulated_data, file = "output/data/simulated_data.csv", row.names = FALSE)
