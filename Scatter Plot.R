cost.of.living.scatter.plots <-new.cost.of.living
library(ggplot2)
attach(cost.of.living.scatter.plots)
graph1 <-ggplot(cost.of.living.scatter.plots, aes(x = White_bread, y = Meal_Inexpensive )) + 
  geom_point(size = 2, shape = 23, fill = "blue", color = "darkred") +
  labs(y = "Cost of Inexpensive Meal (Euros)", x = "Cost of White Bread (Euros)" , color = "Blue", title = "Relationship between Cost of Inexpensive meal and White bread")+
  stat_smooth(method = "loess", color = "darkred", se =FALSE, size = 2)

graph1
windows(height = 20, width = 25)
graph2 <-ggplot(cost.of.living.scatter.plots, aes(x = Chicken_breasts, y = Meal_Midrange, label = City )) + 
  geom_point(size = 2, shape = 23, fill = "blue", color = "darkred") +
  labs(y = "Cost of Mid-range Meal (Euros)", x = "Cost of Chicken Breasts (Euros)" , color = "Blue", title = "Relationship between Cost of Mid-range meal and Chicken breasts")+
  stat_smooth(method = "loess", color = "darkred", se =FALSE, size = 2)+
  geom_text(aes(label=ifelse(Chicken_breasts>20,as.character(City),'')),hjust = 0, vjust = 0)+
geom_text(aes(label=ifelse(Meal_Midrange>90,as.character(City),'')), hjust = 0, vjust = 0 )
graph2

graph3 <-ggplot(cost.of.living.scatter.plots, aes(x = Milk, y = Cappuccino )) + 
  geom_point(size = 2, shape = 23, fill = "blue", color = "darkred") +
  labs(y = "Cost of Cappuccino (Euros)", x = "Cost of Milk (Euros)" , color = "Blue", title = "Relationship between Cost of Cappuccino and Milk")+
  stat_smooth(method = "loess", color = "darkred", se =FALSE, size = 2)

graph3

graph4 <-ggplot(cost.of.living.scatter.plots, aes(x = Net_salary, y = Apartment3_in_citycenter )) + 
  geom_point(size = 2, shape = 23, fill = "blue", color = "darkred") + xlim(0,7000)+
  labs(y = "Cost of a 3 bedroom Apartment in City Centre (Euros)", x = "Net Salary (Euros)" , color = "Blue", title = "Relationship between Cost of a 3 bedroom Apartment in City Centre and Net Salary")+
  stat_smooth(method = "loess", color = "darkred", se =FALSE, size = 2)+
geom_text(aes(label=ifelse(Net_salary>5000,as.character(City),'')),hjust = 0, vjust = 0 ) +
  geom_text(aes(label=ifelse(Apartment3_in_citycenter>4000,as.character(City),'')), hjust = 0, vjust = 0 )

graph4

#graph5 <-ggplot(cost.of.living.scatter.plots, aes(x = Mortage_interestrate_percentage, y = Purchase_apt_in)) + 
  geom_point(size = 2, shape = 23, fill = "blue", color = "darkred") +
  labs(y = "Price per Square Meter to Buy Apartment in City Centre (Euros)", x = "Mortgage Interest Rate in Percentages (%), Yearly" , color = "Blue", title = "Relationship between Price per Square Meter to Buy Apartment in City Centre and Mortgage Interest Rate")+
  stat_smooth(method = "loess", color = "darkred", se =FALSE, size = 2)


#graph5

graph5 <-ggplot(cost.of.living.scatter.plots, aes(x = Net_salary, y = Preschool_monthly)) +
  geom_point(size = 2, shape = 23, fill = "blue", color = "darkred") + xlim(0,7000)+
  labs(y = "Fee for Preschool (or Kindergarten), Full Day, Private, Monthly for 1 Child (Euros)", x = "Net Salary (Euros)" , color = "Blue", title = "Relationship between Fee for Preschool (or Kindergarten) and Net Salary")+
  stat_smooth(method = "loess", color = "darkred", se =FALSE, size = 2)+
  geom_text(aes(label=ifelse(Net_salary>6000,as.character(City),'')),hjust = 0, vjust = 0 ) +
  geom_text(aes(label=ifelse(Preschool_monthly>2000,as.character(City),'')), hjust = 0, vjust = 0 )

graph5

