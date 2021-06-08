# Linear Regression to Predict MPG
library(dplyr) #3: Load dplyr package
mechacar_df <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_df) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_df)) #generate summary statistics

# Create Visualizations for the Trip Analysis
susp_coil <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors = F)
total_summary <- susp_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
lot_summary <- susp_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# T-Tests on Suspension Coils
t.test(susp_coil$PSI, mu = 1500)

Lot1 = subset(susp_coil, Manufacturing_Lot == 'Lot1')
Lot2 = subset(susp_coil, Manufacturing_Lot == 'Lot2')
Lot3 = subset(susp_coil, Manufacturing_Lot == 'Lot3')

t.test(Lot1$PSI, mu = 1500)
t.test(Lot2$PSI, mu = 1500)
t.test(Lot3$PSI, mu = 1500)
