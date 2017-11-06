library(openxlsx)
library(plyr)
library(data.table)
library(shiny)
library(leaflet)

rm(list = ls())
options(stringsAsFactors = FALSE)
setwd("/Users/FCORVAGL/Desktop/Data/Map/Tables")

#take the names of the excel files
files <- list.files("/Users/FCORVAGL/Desktop/Data/Map/Tables")
#create a list of Dframe using the tab for 2015 and for 2014
D15m <- lapply(files, function(x){
  read.xlsx(x, sheet = "2015", startRow=7, colNames=T, skipEmptyRows = TRUE)
})
#D14m <- lapply(files, function(x){
#  read.xlsx(x, sheet = "2014", startRow=7, colNames=T, skipEmptyRows = TRUE)
#})

#using plyr merge all the Dframe in a single one using LSOA_Code for 2015 and 2014
D15m2 <- join_all(D15m, by="LSOA_code", type='left')
#D14m2 <- join_all(D14m, by="LSOA_code", type='left')

#remove duplicates columns for region and LA name
D15m2 <- D15m2[, !duplicated(colnames(D15m2))]
#D14m2 <- D14m2[, !duplicated(colnames(D14m2))]

D15m2[, 5:ncol(D15m2)] <- lapply(D15m2[, 5:ncol(D15m2)], round, 0)
#D14m2[, 5:ncol(D14m2)] <- lapply(D14m2[, 5:ncol(D14m2)], round, 0)
col <-  c("LSOA_code", "Region", "LA_Code", "LA_Name", "Empl_pop", "100EmpPTt", "100EmpCyct", 
          "100EmpCart", "500EmpPTt", "500EmpCyct", "500EmpCart","5000EmpPTt", "5000EmpCyct", 
          "5000EmpCart", "PSPTt", "PSCyct", "PSCart", "SSPTt", "SSCyct", "SSCart", "FEPTt", 
          "FECyct", "FECart", "GPPTt", "GPCyct", "GPCart", "HospPTt", "HospCyct", "HospCart",
          "FoodPTt", "FoodCyct", "FoodCart", "TownPTt", "TownCyct", "TownCart")

D15m3 <- D15m2[, which(colnames(D15m2) %in% col)]

col2 <- c("PT", "Cyc", "Car") 
ListAvg15 <- lapply(col2, function(x) {
  df <- D15m3[grepl(x, names(D15m3))]
  df$AVG <- rowMeans(df)
})

Avg15 <- as.data.frame(do.call(cbind, ListAvg15))
catname <- c("Public Transport/Walking","Cycle", "Car")
names(Avg15) <- paste0("AVG_", catname)  
Avg15 <- cbind(D15m3[, 1:5],Avg15)

#D14m3 <- D14m2[, which(colnames(D14m2) %in% col)]

write.csv(D15m2, file = "/Users/FCORVAGL/Desktop/Data/Map/D15m.csv", row.names = FALSE)
#write.csv(D14m2, file = "/Users/FCORVAGL/Desktop/Data/R Shiny/D14m.csv", row.names = FALSE)

write.csv(D15m3, file = "/Users/FCORVAGL/Desktop/Data/Map/D15m.csv", row.names = FALSE)
#write.csv(D14m2, file = "/Users/FCORVAGL/Desktop/Data/R Shiny/D14m.csv", row.names = FALSE)

write.csv(Avg15, file = "/Users/FCORVAGL/Desktop/Data/Map/D15AVGm.csv", row.names = FALSE)



