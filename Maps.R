##Import World Map

map.world <- map_data("world")

library(dplyr)

##Make country names consistent with the world map data
cost.of.living.scatter.plots$Country <-recode(cost.of.living.scatter.plots$Country, 'Bosnia.And.Herzegovina' = 'Bosnia and Herzegovina','New.Zealand' = 'New Zealand', 'United.States' = 'USA', 'United.Arab.Emirates' = 'United Arab Emirates','Czech.Republic' = 	'Czech Republic', 'United.Kingdom' = 'UK', "South.Korea" = "South Korea", "Sri.Lanka" = "Sri Lanka", 	"Hong.Kong" =	"Hong Kong", "South.Africa" = "South Africa", 	"Costa.Rica" = 	"Costa Rica", "Dominican.Republic" = "Dominican Republic")

##Sort the cost of living data in decending order in terms of apartment purchase cost

app.purchase <- cost.of.living.scatter.plots[with(cost.of.living.scatter.plots, order(-Purchase_apt_in)), ]

##Filter top 10 costliest countries

app.purchase10 <-app.purchase[1:10]

##Add Rank to the dataframe
app.purchase10$Rank<-rank(-app.purchase10$Purchase_apt_in)

##Join map dataframe with top 10 countries dataframe

map_world_joined <- left_join(map.world, app.purchase10,by = c('region' = 'Country'))

##Code to add fill
map_world_joined <- map_world_joined %>% mutate(fill_flg = ifelse(is.na(Rank),F,T))


##Filter distinct countries from joined data
new.data <- map_world_joined %>%distinct(map_world_joined$region, .keep_all = T)



library(ggplot2)

  
  
## Plot graph with labels

windows(height = 20, width = 25)

labs <- ifelse(new.data$fill_flg==TRUE,new.data$region,'')


ggplot(data = new.data, aes(x= long, y= lat, label = region)) + geom_polygon(data = map_world_joined, aes(x= long, y= lat, group = group, fill = fill_flg), show.legend = FALSE) +
  scale_fill_manual(values = c("Grey", "Red")) +labs(title = "World Map showing countries having high cost to buy apartment" )+
geom_text(aes(label=labs ),hjust = 0, vjust = 0) 

##second graph

##Sort the cost of living data in decending order in terms of apartment rent

app.purchase1 <- cost.of.living.scatter.plots[with(cost.of.living.scatter.plots, order(-Apartment3_in_citycenter)), ]

##Filter top 10 costliest countries

app.purchase101 <-app.purchase1[1:10]

##Add Rank to the dataframe
app.purchase101$Rank<-rank(-app.purchase101$Apartment3_in_citycenter)

##Join map dataframe with top 10 countries dataframe

map_world_joined1 <- left_join(map.world, app.purchase101,by = c('region' = 'Country'))

##Code to add fill
map_world_joined1 <- map_world_joined1 %>% mutate(fill_flg1 = ifelse(is.na(Rank),F,T))


##Filter distinct countries from joined data
new.data1 <- map_world_joined1 %>%distinct(map_world_joined1$region, .keep_all = T)



library(ggplot2)



## Plot graph with labels

windows(height = 20, width = 25)

labs1 <- ifelse(new.data1$fill_flg1==TRUE,new.data$region,'')


ggplot(data = new.data1, aes(x= long, y= lat, label = region)) + geom_polygon(data = map_world_joined1, aes(x= long, y= lat, group = group, fill = fill_flg1), show.legend = FALSE) +
  scale_fill_manual(values = c("Grey", "Red")) +labs(title = "World Map showing countries having high rent for a 3 bedroom apartment" )+
  geom_text(aes(label=labs1 ),hjust = 0, vjust = 0) 

