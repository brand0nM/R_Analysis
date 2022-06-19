library(tidyverse)
mechaCarMpg <- read.csv('MechaCar_mpg.csv')
mpgLinReg <- lm(mpg~AWD+ground_clearance+spoiler_angle+vehicle_weight+vehicle_length,mechacar_mpg)
summary(mpgLinReg)