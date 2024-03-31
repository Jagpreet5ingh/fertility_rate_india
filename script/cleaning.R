# Load required libraries
library(tidyverse)

# Read the CSV file, skipping the first 4 rows
data <- read.csv("input/data/unedited_data_literacy_rate.csv", skip = 4)

# Filter the rows where the country is "South Asia"
south_asia_data <- data %>%
  filter(Country.Name == "South Asia")

# Select columns '2000' to '2020' for the selected country
south_asia_selected <- south_asia_data %>%
  select(matches("^X(20[0-2][0-9])$"))

# Print the resulting dataframe
print(south_asia_selected)

# Save the selected data
write.csv(south_asia_selected, file = "south_asia_selected_data.csv", row.names = FALSE)