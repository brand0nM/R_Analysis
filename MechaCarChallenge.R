library(tidyverse)
mechaCarMpg <- read.csv('MechaCar_mpg.csv')
suspensionCoil <- read.csv('Suspension_Coil.csv')
suspensionCoil$Manufacturing_Lot <- factor(suspensionCoil$Manufacturing_Lot)

mpgLinReg <- lm(mpg~AWD+ground_clearance+spoiler_angle+vehicle_weight+vehicle_length,mechacar_mpg)
summary(mpgLinReg)

total_summary <- data.frame(mean(suspensionCoil$PSI),median(suspensionCoil$PSI),
                            var(suspensionCoil$PSI),sd(suspensionCoil$PSI))

lot_summary <- suspensionCoil %>% group_by(Manufacturing_Lot) %>% 
  summarize(c(mean(PSI)),c(median(PSI)),c(var(PSI)),c(sd(PSI)))