# import packages
library(dplyr) # import dplyr
library(tidyverse) #import tidyverse package

# Linear Regression on MPG
MechaCar_Data <- read_csv("Resources/MechaCar_mpg.csv") #import csv
head(MechaCar_Data) #display first rows of imported data

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + AWD + ground_clearance,data=mechaCar_Data) # linear multiple regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + AWD + ground_clearance,data=MechaCar_Data) ) # summary statistics

# Smmary Stats on Suspension Coil Data
SuspenCoil_Data <- read_csv("Resources/Suspension_Coil.csv") #import csv
total_summary <- SuspenCoil_Data  %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') # total summary table
lot_summary <- SuspenCoil_Data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') 

# T Test on Suspension Coils
?t.test()
t.test(population2, mu=mean(PSI))
## T Test whole data
t.test(SuspenCoil_Data$PSI, mu=1500)
## T Test lot 1
lot1_coils <- subset(SuspenCoil_Data, Manufacturing_Lot=='Lot1' )
t.test(lot1_coils$PSI, mu=1500)
## T Test lot 2
lot2_coils <- subset(SuspenCoil_Data, Manufacturing_Lot=='Lot2' )
t.test(lot2_coils$PSI, mu=1500)
## T Test lot 3
lot3_coils <- subset(SuspenCoil_Data, Manufacturing_Lot=='Lot3' )
t.test(lot3_coils$PSI, mu=1500)
