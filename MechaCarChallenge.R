library(tidyverse)
MechaCar_table <- read.csv(file="MechaCar_mpg.csv",check.names = F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
     ground_clearance + AWD, data=MechaCar_table) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
             ground_clearance + AWD, data=MechaCar_table)) #generate summary statistics

SuspensionCoils_table <- read.csv(file="Suspension_Coil.csv",check.names = F,stringsAsFactors = F)
total_summary <- SuspensionCoils_table %>% 
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) #create summary table
lot_summary <- SuspensionCoils_table %>% group_by(Manufacturing_Lot) %>%
  summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups="keep") #create summary table by Lot no.

t.test(log10(SuspensionCoils_table$PSI), mu=1500) #compare PSI of all lots vs presumed population means

t.test(log10(subset(SuspensionCoils_table$PSI,SuspensionCoils_table$Manufacturing_Lot == "Lot1")),
       mu = 1500) #compare PSI of Lot1 vs presumed population means
t.test(log10(subset(SuspensionCoils_table$PSI,SuspensionCoils_table$Manufacturing_Lot == "Lot2")),
       mu = 1500) #compare PSI of Lot2 vs presumed population means
t.test(log10(subset(SuspensionCoils_table$PSI,SuspensionCoils_table$Manufacturing_Lot == "Lot3")),
       mu = 1500) #compare PSI of Lot3 vs presumed population means
