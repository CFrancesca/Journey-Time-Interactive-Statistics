library(shiny)
library(DT)
rm(list = ls())

setwd("xxx/R Shiny")

Ddes <- read.csv("xxx/R Shiny/Ddes.csv")
Data16 <- read.csv("xxx/R Shiny/D16.csv")
Data15 <- read.csv("xxx/R Shiny/D15.csv")
Data14 <- read.csv("xxx/R Shiny/D14.csv")
#Legends
names(Ddes)[3] <- "Parameter Value"
DdesEmp <- rbind(Ddes[1:3,], Ddes[grep("Emp",Ddes$Field),])
DdesPS <- rbind(Ddes[1:3,], Ddes[grep("PS",Ddes$Field),])
DdesSS <- rbind(Ddes[1:3,], Ddes[grep("SS",Ddes$Field),])
DdesFE <- rbind(Ddes[1:3,], Ddes[grep("FE",Ddes$Field),])
DdesGP <- rbind(Ddes[1:3,], Ddes[grep("GP",Ddes$Field),])
DdesH <- rbind(Ddes[1:3,], Ddes[grep("Hosp",Ddes$Field),])
DdesF <- rbind(Ddes[1:3,], Ddes[grep("Food",Ddes$Field),])
DdesT <- rbind(Ddes[1:3,], Ddes[grep("Town",Ddes$Field),])
#2016
D16Emp <- cbind(Data16[, 1:3], Data16[, grep("Emp", colnames(Data16))])
D16PS <- cbind(Data16[, 1:3], Data16[, grep("PS", colnames(Data16))])
D16SS <- cbind(Data16[, 1:3], Data16[, grep("SS", colnames(Data16))])
D16FE <- cbind(Data16[, 1:3], Data16[, grep("FE", colnames(Data16))])
D16GP <- cbind(Data16[, 1:3], Data16[, grep("GP", colnames(Data16))])
D16H <- cbind(Data16[, 1:3], Data16[, grep("Hosp", colnames(Data16))])
D16F <- cbind(Data16[, 1:3], Data16[, grep("Food", colnames(Data16))])
D16T <- cbind(Data16[, 1:3], Data16[, grep("Town", colnames(Data16))])
#2015
D15Emp <- cbind(Data15[, 1:3], Data15[, grep("Emp", colnames(Data15))])
D15PS <- cbind(Data15[, 1:3], Data15[, grep("PS", colnames(Data15))])
D15SS <- cbind(Data15[, 1:3], Data15[, grep("SS", colnames(Data15))])
D15FE <- cbind(Data15[, 1:3], Data15[, grep("FE", colnames(Data15))])
D15GP <- cbind(Data15[, 1:3], Data15[, grep("GP", colnames(Data15))])
D15H <- cbind(Data15[, 1:3], Data15[, grep("Hosp", colnames(Data15))])
D15F <- cbind(Data15[, 1:3], Data15[, grep("Food", colnames(Data15))])
D15T <- cbind(Data15[, 1:3], Data15[, grep("Town", colnames(Data15))])
#2014
D14Emp <- cbind(Data14[, 1:3], Data14[, grep("Emp", colnames(Data14))])
D14PS <- cbind(Data14[, 1:3], Data14[, grep("PS", colnames(Data14))]) 
D14SS <- cbind(Data14[, 1:3], Data14[, grep("SS", colnames(Data14))])
D14FE <- cbind(Data14[, 1:3], Data14[, grep("FE", colnames(Data14))])
D14GP <- cbind(Data14[, 1:3], Data14[, grep("GP", colnames(Data14))])
D14H <- cbind(Data14[, 1:3], Data14[, grep("Hosp", colnames(Data14))])
D14F <- cbind(Data14[, 1:3], Data14[, grep("Food", colnames(Data14))])
D14T <- cbind(Data14[, 1:3], Data14[, grep("Town", colnames(Data14))])

