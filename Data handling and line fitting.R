# Code for funding statistics of the linear fit:

#Load libraries

library(dplyr)
library(ggplot2)
library(ciTools)

# See what we got

lm(Mean~LogELISAIgG,data=MAT25)

#Define model
MATmodel<-lm(Mean~LogELISAIgG,data=MAT25)

#Check fit
summary(MATmodel)

#Confidence intervals
confint(MATmodel)

#Code for summarizing image analysis results and exporting to CSV

#Take the average of b 

Meanb=bb2 %>%
  group_by(id,field1) %>%
  dplyr::summarize(Mean = mean(b, na.rm=TRUE),sd = sd(b, na.rm = TRUE))

#Export to xl and save as csv

write.csv(bb2, "~/Documents/COVID Agglutination/April 2025 Analysis-Latest/CSV/StandardCurve.csv")


