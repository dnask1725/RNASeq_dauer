
library(openxlsx)



res1Sig<- read.xlsx("/Significant/res1Sig.xlsx", sheet = 1)

data <- read.xlsx("/rgs_and_categories.xlsx", sheet = 1)


filtered_data <- data[data$Category.2 == "Extracellular material: collagen", ]

filtered_data <- filtered_data[complete.cases(filtered_data), ]

merged_data <- merge(filtered_data, res1Sig, by = "GeneID")


merged_data <- merged_data[, -which(names(merged_data) == "X1")]
write.xlsx(merged_data, file = "/Analysis/KEGG/Cluster_data_res1.xlsx", rowNames = TRUE)


#---------------------------------------------------------------------------------------------------------------------------------------------

res2Sig<- read.xlsx("/Significant/res2Sig.xlsx", sheet = 1)

data <- read.xlsx("/rgs_and_categories.xlsx", sheet = 1)


filtered_data <- data[data$Category.2 == "Extracellular material: collagen", ]

filtered_data <- filtered_data[complete.cases(filtered_data), ]

merged_data <- merge(filtered_data, res2Sig, by = "GeneID")


merged_data <- merged_data[, -which(names(merged_data) == "X1")]
write.xlsx(merged_data, file = "/Analysis/KEGG/Cluster_data_res2.xlsx", rowNames = TRUE)

