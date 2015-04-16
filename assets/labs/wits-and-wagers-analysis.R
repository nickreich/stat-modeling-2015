## reading wits and wagers data

## source function for reading Google Spreadsheets
library(XML)
library(httr)
library(devtools)
library(ggplot2)
source_url("https://gist.githubusercontent.com/harborisland/7ca1e34a7ec05f052606/raw/9a207508a8abc3ba3d456653865129be64aa54d0/readGoogleSpreadsheet.R")

# Set URL
url <- 'https://docs.google.com/spreadsheets/d/1xNKOe0jXeaUThVfgVgcAZQMWL_So2Wp-X1xguFkgxDg/pubhtml'

# Execute Function
dat <- readGoogleSpreadsheet(url)
dat
