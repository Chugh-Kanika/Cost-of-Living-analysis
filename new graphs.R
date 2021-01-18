windows(height = 20, width = 25)


new.graph2 <-ggplot(cost.of.living.scatter.plots, aes(x = Imported_beer, y = Meal_Midrange, label = City )) + 
  geom_point(size = 2, shape = 23, fill = "blue", color = "darkred") + xlim(0,15)+
  labs(y = "Cost of Mid-range Meal (Euros)", x = "Cost of Imported Beer (Euros)" , color = "Blue", title = "Relationship between Cost of Mid-range meal and Imported Beer")+
  stat_smooth(method = "loess", color = "darkred", se =FALSE, size = 2)+
  geom_text(aes(label=ifelse(Meal_Midrange>90,as.character(City),'')), hjust = 0, vjust = 0)+
  geom_text(aes(label=ifelse(Imported_beer>11,as.character(City),'')), hjust = 0, vjust = 0)
new.graph2


new.graph3 <-ggplot(cost.of.living.scatter.plots, aes(x = Water, y = Meal_Midrange, label = City )) + 
  geom_point(size = 2, shape = 23, fill = "blue", color = "darkred") + xlim(0,4)+
  labs(y = "Cost of Mid-range Meal (Euros)", x = "Cost of Water (Euros)" , color = "Blue", title = "Relationship between Cost of Mid-range meal and Water")+
  stat_smooth(method = "loess", color = "darkred", se =FALSE, size = 2)+
  geom_text(aes(label=ifelse(Meal_Midrange>90,as.character(City),'')), hjust = 0, vjust = 0)+
  geom_text(aes(label=ifelse(Water>3,as.character(City),'')), hjust = 0, vjust = 0)
new.graph3

new.graph4 <-ggplot(cost.of.living.scatter.plots, aes(x = Eggs, y = Meal_Midrange, label = City )) + 
  geom_point(size = 2, shape = 23, fill = "blue", color = "darkred") + xlim(0,6)+
  labs(y = "Cost of Mid-range Meal (Euros)", x = "Cost of Eggs (Euros)" , color = "Blue", title = "Relationship between Cost of Mid-range meal and Eggs")+
  stat_smooth(method = "loess", color = "darkred", se =FALSE, size = 2)+
  geom_text(aes(label=ifelse(Meal_Midrange>90,as.character(City),'')), hjust = 0, vjust = 0)+
  geom_text(aes(label=ifelse(Eggs>4,as.character(City),'')), hjust = 0, vjust = 0)
new.graph4



new.graph5 <-ggplot(cost.of.living.scatter.plots, aes(x = Tomato_1kg, y = Meal_Midrange, label = City )) + 
  geom_point(size = 2, shape = 23, fill = "blue", color = "darkred") + xlim(0,7)+
  labs(y = "Cost of Mid-range Meal (Euros)", x = "Cost of Tomato (Euros)" , color = "Blue", title = "Relationship between Cost of Mid-range meal and Tomato")+
  stat_smooth(method = "loess", color = "darkred", se =FALSE, size = 2)+
  geom_text(aes(label=ifelse(Meal_Midrange>90,as.character(City),'')), hjust = 0, vjust = 0)+
  geom_text(aes(label=ifelse(Tomato_1kg>5,as.character(City),'')), hjust = 0, vjust = 0)
new.graph5

new.graph6 <-ggplot(cost.of.living.scatter.plots, aes(x = Onion_1kg, y = Meal_Midrange, label = City )) + 
  geom_point(size = 2, shape = 23, fill = "blue", color = "darkred") + xlim(0,4)+
  labs(y = "Cost of Mid-range Meal (Euros)", x = "Cost of Onion (Euros)" , color = "Blue", title = "Relationship between Cost of Mid-range meal and Onion")+
  stat_smooth(method = "loess", color = "darkred", se =FALSE, size = 2)+
  geom_text(aes(label=ifelse(Meal_Midrange>90,as.character(City),'')), hjust = 0, vjust = 0)+
  geom_text(aes(label=ifelse(Onion_1kg>3,as.character(City),'')), hjust = 0, vjust = 0)
new.graph6

  
graph4.new <-ggplot(cost.of.living.scatter.plots, aes(x = Monthly_pass, y = Net_salary)) + 
  geom_point(size = 2, shape = 23, fill = "blue", color = "darkred") + ylim(0,7000)+xlim(0,200)+
  labs(y = "Net Salary (Euros)", x = "Cost of Monthly Pass (Euros)" , color = "Blue", title = "Relationship between Net Salary and Cost of Monthly Pass")+
  stat_smooth(method = "loess", color = "darkred", se =FALSE, size = 2)+
  geom_text(aes(label=ifelse(Net_salary>5000,as.character(City),'')),hjust = 0, vjust = 0 ) +
  geom_text(aes(label=ifelse(Monthly_pass>150,as.character(City),'')), hjust = 0, vjust = 0 )

graph4.new


graph5.new <-ggplot(cost.of.living.scatter.plots, aes(x = Apartment1_in_citycenter, y = Net_salary)) + 
  geom_point(size = 2, shape = 23, fill = "blue", color = "darkred") + ylim(0,7000)+xlim(0,4000)+
  labs(y = "Net Salary (Euros)", x = "Rent of 1 bedroom Apartment (Euros)" , color = "Blue", title = "Relationship between Net Salary and Rent of 1 bedroom apartment ")+
  stat_smooth(method = "loess", color = "darkred", se =FALSE, size = 2)+
  geom_text(aes(label=ifelse(Net_salary>5000,as.character(City),'')),hjust = 0, vjust = 0 ) +
  geom_text(aes(label=ifelse(Apartment1_in_citycenter>2700,as.character(City),'')), hjust = 0, vjust = 0 )

graph5.new

graph6.new <-ggplot(cost.of.living.scatter.plots, aes(x = Internet, y = Net_salary)) + 
  geom_point(size = 2, shape = 23, fill = "blue", color = "darkred") + ylim(0,7000)+xlim(0,100)+
  labs(y = "Net Salary (Euros)", x = "Cost of Internet (Euros)" , color = "Blue", title = "Relationship between Net Salary and Cost of Internet ")+
  stat_smooth(method = "loess", color = "darkred", se =FALSE, size = 2)+
  geom_text(aes(label=ifelse(Net_salary>5000,as.character(City),'')),hjust = 0, vjust = 0 ) +
  geom_text(aes(label=ifelse(Internet> 90,as.character(City),'')), hjust = 0, vjust = 0 )

graph6.new

