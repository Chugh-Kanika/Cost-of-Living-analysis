## Raw File
cost.of.living<-read.csv("cost-of-living.csv")
cost.of.living
dim(cost.of.living)

##Transposed the data
cost.of.living.t <- as.data.frame(t(cost.of.living[,2:ncol(cost.of.living)]))
colnames(cost.of.living.t)<-cost.of.living[,1]
cost.of.living.t


##Convert row names into first column and rename first column
cost.of.living.t <- cbind.data.frame(row.names(cost.of.living.t),data.frame(cost.of.living.t, row.names = NULL))
colnames(cost.of.living.t)[1]<- "City.Country"

## Rename Columns

colnames(cost.of.living.t)[2] <- "Meal_Inexpensive"
colnames(cost.of.living.t)[3] <- "Meal_Midrange"
colnames(cost.of.living.t)[4] <- "Meal_McD"
colnames(cost.of.living.t)[5] <- "Domestic_beer_draught"
colnames(cost.of.living.t)[6] <- "Imported_beer"
colnames(cost.of.living.t)[7] <- "Coke_Pepsi"
colnames(cost.of.living.t)[8] <- "Water"
colnames(cost.of.living.t)[9] <- "Milk"
colnames(cost.of.living.t)[10] <- "White_bread"
colnames(cost.of.living.t)[11] <- "Eggs"
colnames(cost.of.living.t)[12] <- "Local_cheese"
colnames(cost.of.living.t)[13] <- "Water"
colnames(cost.of.living.t)[14] <- "Bottle_wine"
colnames(cost.of.living.t)[15] <- "Domestic_beer_bottle"
colnames(cost.of.living.t)[16] <- "Imported_beer"
colnames(cost.of.living.t)[17] <- "Cigarettes"
colnames(cost.of.living.t)[18] <- "Local_Transport_Ticket"
colnames(cost.of.living.t)[19] <- "Chicken_breasts"
colnames(cost.of.living.t)[20] <- "Monthly_pass"
colnames(cost.of.living.t)[21] <- "Gasoline"
colnames(cost.of.living.t)[22] <- "Volkswagon_golf"
colnames(cost.of.living.t)[23] <- "Apartment1_in_citycenter"
colnames(cost.of.living.t)[24] <-"Apartment1_outside_citycenter"
colnames(cost.of.living.t)[25] <- "Apartment3_in_citycenter"
colnames(cost.of.living.t)[26] <- "Apartmenr3_outside_citycenter"
colnames(cost.of.living.t)[27] <- "Basic_utilities"
colnames(cost.of.living.t)[28] <- "Prepaid_mobile_tariff"
colnames(cost.of.living.t)[29] <- "Internet"
colnames(cost.of.living.t)[30] <- "Fitness_club"
colnames(cost.of.living.t)[31] <- "Tennis_court_rent"
colnames(cost.of.living.t)[32] <- "Cinema_1seat"
colnames(cost.of.living.t)[33] <- "Jeans_1pair"
colnames(cost.of.living.t)[34] <- "Summer_dress"
colnames(cost.of.living.t)[35] <- "Nike_runnung_shoes"
colnames(cost.of.living.t)[36] <- "Business_shoes"
colnames(cost.of.living.t)[37] <- "Purchase_apt_in"
colnames(cost.of.living.t)[38] <- "Purchase_apt_outside"
colnames(cost.of.living.t)[39] <- "Net_salary"
colnames(cost.of.living.t)[40] <- "Mortage_interestrate_percentage"
colnames(cost.of.living.t)[41] <- "Taxi start"
colnames(cost.of.living.t)[42] <- "Taxi_1km"
colnames(cost.of.living.t)[43] <- "Taxi_1hr_waiting"
colnames(cost.of.living.t)[44] <- "Apples_1kg"
colnames(cost.of.living.t)[45] <- "Oranges_1kg"
colnames(cost.of.living.t)[46] <- "Potato_1kg"
colnames(cost.of.living.t)[47] <- "Lettuce_1head"
colnames(cost.of.living.t)[48] <- "Cappuccino"
colnames(cost.of.living.t)[49] <- "Rice_1kg"
colnames(cost.of.living.t)[50] <- "Tomato_1kg"
colnames(cost.of.living.t)[51] <- "Banana_1kg"
colnames(cost.of.living.t)[52] <- "Onion_1kg"
colnames(cost.of.living.t)[53] <- "Roundbeef_1kg"
colnames(cost.of.living.t)[54] <- "Toyota_corolla"
colnames(cost.of.living.t)[55] <- "Preschool_monthly"
colnames(cost.of.living.t)[56] <- "Int_primary_school_yearly"

cost.of.living.t

##split first column into city and country

library(splitstackshape)
cost.of.living.t.n <- cSplit(cost.of.living.t, "City.Country", "..")
cost.of.living.t.n

##Move split columns in the beginning.

library(dplyr)

new.cost.of.living <- cost.of.living.t.n %>%
setNames(make.names(names(.), unique = TRUE)) %>%   
  
select(City.Country_1 ,City.Country_2, City.Country_3, everything())


## Modify second column to country for United States and Poland

new.cost.of.living[c(39,48,49,54,63,70,72,79,87,89,100,101,103),2] <- "United.States"

new.cost.of.living[57,2] <- "Poland"

##Delete third column as it is not required. 

new.cost.of.living$City.Country_3 <- NULL

## rename first and second column to city and country

colnames(new.cost.of.living)[1] <- "City"
colnames(new.cost.of.living)[2] <- "Country"

## Names of Columns 
names(new.cost.of.living)

##Summary of columns

summary(new.cost.of.living)

