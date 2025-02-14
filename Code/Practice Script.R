#install packages
#install.packages("dplyr")
#install.packages("ggplot2")

#load packages
library(ggplot2)
library(dplyr)


#read the annual data from SRM
FluxData <- read.csv("./Data/AMF_US-SRM_FLUXNET_FULLSET_2004-2023_3-6/AMF_US-SRM_FLUXNET_FULLSET_YY_2004-2023_3-6.csv")
head (FLUXDATA)
tail (FLUXDATA)  
Temp <- FluxData$TA_F

#plot a figure of soil moisture and Temp
SoilTemp <- FluxData %>%
select(SWC_F_MDS_1, TA_F_MDS)

PracticePlot <-ggplot(data= SoilTemp, aes(x=TA_F_MDS, y = SWC_F_MDS_1))+
geom_point()


