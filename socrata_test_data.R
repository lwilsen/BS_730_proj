# CDC Data
# Source: https://data.cdc.gov/

library(RSocrata)

# Retrieve x records as example
df <- read.socrata(
  url = "https://data.cdc.gov/resource/vbim-akqf.json?$limit=10000"
)

# Check the data structure
str(df)

# Show summary of an example column
table(df$hosp_yn, useNA = "always")

# A second dataset with geographic data (state/county)
df2 <- read.socrata(
  url = "https://data.cdc.gov/resource/n8mc-b4w4.json?$limit=1000"
)