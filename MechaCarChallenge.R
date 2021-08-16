#Deliverable 1
library(dplyr)

MechaCar_table <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = MechaCar_table) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = MechaCar_table)) #generate summary statistics

#Deliverable 2
library(tidyverse)

suspension_coil_table <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

#summary of PSI to get mean, median, variance, and standard deviation
total_summary <- suspension_coil_table %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),variance_PSI=var(PSI),sd_PSI=sd(PSI), .groups = 'keep')

# group each manufacturing lot by mean, median, variance, and standard deviation of PSI
lot_summary <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),variance_PSI=var(PSI),sd_PSI=sd(PSI), .groups = 'keep')

#Deliverable 3

# t.test function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1500 PSI
t.test((suspension_coil_table$PSI),mu=1500)

#determine if the PSI for each manufacturing lot is statistically different from the population mean of 1500 PSI using t.test() and subset()
lot1 <- subset(suspension_coil_table, Manufacturing_Lot=="Lot1")
lot2 <- subset(suspension_coil_table, Manufacturing_Lot=="Lot2")
lot3 <- subset(suspension_coil_table, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI, mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)