library(tidyverse)
mechaCarMpg <- read.csv('MechaCar_mpg.csv')
suspensionCoil <- read.csv('Suspension_Coil.csv')

suspensionCoil$Manufacturing_Lot <- factor(suspensionCoil$Manufacturing_Lot)
mpgLinReg <- lm(mpg~AWD+ground_clearance+spoiler_angle+vehicle_weight+vehicle_length,mechaCarMpg)
summary(mpgLinReg)


total_summary <- suspensionCoil %>% summarize(c(mean(PSI)),c(median(PSI)),c(var(PSI)),c(sd(PSI)))
sample_table <- suspensionCoil %>% sample_n(50)
t.test(log10(sample_table$PSI),mu=mean(log10(suspensionCoil$PSI)))

lot_summary <- suspensionCoil %>% group_by(Manufacturing_Lot) %>% 
  summarize(c(mean(PSI)),c(median(PSI)),c(var(PSI)),c(sd(PSI)))
lot1Test <- t.test(log10(suspensionCoil[(suspensionCoil$Manufacturing_Lot=="Lot1"),c("PSI")]),
       mu=mean(log10(suspensionCoil$PSI)))
lot1Test
summary(lot1Test)
lot2Test <- t.test(log10(suspensionCoil[(suspensionCoil$Manufacturing_Lot=="Lot2"),c("PSI")]),
       mu=mean(log10(suspensionCoil$PSI)))
lot2Test
summary(lot2Test)
lot3Test <- t.test(log10(suspensionCoil[(suspensionCoil$Manufacturing_Lot=="Lot3"),c("PSI")]),
       mu=mean(log10(suspensionCoil$PSI)))
lot3Test
summary(lot3Test)
