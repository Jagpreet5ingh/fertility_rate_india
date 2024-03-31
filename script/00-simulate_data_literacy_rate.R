#### Preamble ####
# Purpose : Simulate the adult female literacy rate data for India between 1960-2023
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
simulated_data <- data.frame(Year = 1960:2023, Literacy_Rate = "")

# Assign values to specific years
years_with_values <- c(1981, 1991, 2001, 2006, 2011)
num_years <- length(years_with_values)

# Generate random values with 5 decimal points
values <- round(runif(num_years, min = 25, max = 60), 5)

# Fill in the data frame
simulated_data$Literacy_Rate[simulated_data$Year %in% years_with_values] <- values

# Save the simulated data to a CSV file
write.csv(simulated_data, file = "output/data/simulated_data.csv", row.names = FALSE)
