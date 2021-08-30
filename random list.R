library(readr)
library(tidyverse)
setwd("~/Desktop/AEAData")
# Download data: "Registrations in the AEA RCT Registry (2013-05-15 through 2021-07-31)" (V1) as a .csv file
# Go to https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/NOQ7E3 and save as "Trials_2021.08.csv"

Trials_2021_08 <- read_csv("Trials_2021.08.csv")

set.seed(123)
df = Trials_2021_08 %>% filter(!is.na(`Relevant papers for csv`))
list = sample(df$RCT_ID, 30, replace = FALSE)
list
write.csv(list, "random list")

#Generates the following IDs:
#"AEARCTR-0006464" "AEARCTR-0001636" "AEARCTR-0000280" "AEARCTR-0001466" "AEARCTR-0001973"
# "AEARCTR-0001197" "AEARCTR-0001853" "AEARCTR-0001812" "AEARCTR-0001385" "AEARCTR-0006715"
# "AEARCTR-0003657" "AEARCTR-0001446" "AEARCTR-0001167" "AEARCTR-0001059" "AEARCTR-0001970"
# "AEARCTR-0001614" "AEARCTR-0005632" "AEARCTR-0002769" "AEARCTR-0001165" "AEARCTR-0002960"
# "AEARCTR-0002271" "AEARCTR-0000379" "AEARCTR-0000027" "AEARCTR-0005236" "AEARCTR-0001591"
# "AEARCTR-0001590" "AEARCTR-0000394" "AEARCTR-0001047" "AEARCTR-0000515" "AEARCTR-0001839"