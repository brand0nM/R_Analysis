library(tidyverse)
mechaCarMpg <- read.csv('MechaCar_mpg.csv')
suspensionCoil <- read.csv('Suspension_Coil.csv')

mpgLinReg <- lm(mpg~AWD+ground_clearance+spoiler_angle+vehicle_weight+vehicle_length,mechaCarMpg)
summary(mpgLinReg)

total_summary <- suspensionCoil %>% summarize('Mean'=c(mean(PSI)),'Median'=c(median(PSI)),
                                              'Variance'=c(var(PSI)), 'Standard Deviation'=c(sd(PSI)))
lot_summary <- suspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(
  'Mean'=c(mean(PSI)), 'Median'=c(median(PSI)), 'Variance'=c(var(PSI)), 'Standard Deviation'=c(sd(PSI)))

sample_table <- suspensionCoil %>% sample_n(50)

allLotsTest <- t.test(sample_table$PSI,mu=mean(suspensionCoil$PSI))
lot1Test <- t.test(suspensionCoil[(suspensionCoil$Manufacturing_Lot=="Lot1"),c("PSI")],
                   mu=mean(suspensionCoil$PSI))
lot2Test <- t.test(suspensionCoil[(suspensionCoil$Manufacturing_Lot=="Lot2"),c("PSI")],
                   mu=mean(suspensionCoil$PSI))
lot3Test <- t.test(suspensionCoil[(suspensionCoil$Manufacturing_Lot=="Lot3"),c("PSI")],
                   mu=mean(suspensionCoil$PSI))
allLotsTest
lot1Test
lot2Test
lot3Test

