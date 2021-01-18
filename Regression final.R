
attach(new.cost.of.living)

##Sample Data

test.rows <-sample(1:nrow(new.cost.of.living), size = 50)

test.data <-new.cost.of.living[test.rows, ]
train.data <- new.cost.of.living[-test.rows,]

nrow(test.data)
nrow(train.data)

MealA <- lm(Meal_Midrange ~ Chicken_breasts+Imported_beer + Coke_Pepsi + Water + Eggs + Local_cheese + Bottle_wine + Potato_1kg + Tomato_1kg + Onion_1kg + Rice_1kg + Roundbeef_1kg + White_bread, data = train.data)
summary(MealA)

##Remove Rice

MealB <- lm(Meal_Midrange ~ Chicken_breasts+Imported_beer + Coke_Pepsi + Water + Eggs + Local_cheese + Bottle_wine + Potato_1kg + Tomato_1kg + Onion_1kg + Roundbeef_1kg + White_bread, data = train.data)
summary(MealB)


##Remove Coke Pepsi

MealC <- lm(Meal_Midrange ~ Chicken_breasts+Imported_beer  + Water + Eggs + Local_cheese + Bottle_wine + Potato_1kg + Tomato_1kg + Onion_1kg + Roundbeef_1kg + White_bread, data = train.data)
summary(MealC)

##Remove Potato

MealD <- lm(Meal_Midrange ~ Chicken_breasts+Imported_beer  + Water + Eggs + Local_cheese + Bottle_wine  + Tomato_1kg + Onion_1kg + Roundbeef_1kg + White_bread, data = train.data)
summary(MealD)



##Remove Local Cheese

MealE <- lm(Meal_Midrange ~ Chicken_breasts+Imported_beer  + Water + Eggs + Bottle_wine  + Tomato_1kg + Onion_1kg + Roundbeef_1kg + White_bread, data = train.data)
summary(MealE)

##Remove Wine

MealF <- lm(Meal_Midrange ~ Chicken_breasts+Imported_beer  + Water + Eggs + Tomato_1kg + Onion_1kg + Roundbeef_1kg + White_bread, data = train.data)
summary(MealF)


##Remove Round Beef

MealG <- lm(Meal_Midrange ~ Chicken_breasts+Imported_beer  + Water + Eggs + Tomato_1kg + Onion_1kg + White_bread, data = train.data)
summary(MealG)


##Remove White Bread

MealH <- lm(Meal_Midrange ~ Chicken_breasts+Imported_beer  + Water + Eggs + Tomato_1kg + Onion_1kg , data = train.data)
summary(MealH)

##RMSE Training Set

sqrt(mean((MealH$fitted.values-train.data$Meal_Midrange)^2))

##RMSE Testing Data

test.predict <- predict(MealH, newdata = test.data)

sqrt(mean((test.predict-test.data$Meal_Midrange)^2))

cook <-cooks.distance(MealH)


plot(cook)

locator()

train.data[89,]

## Plot of Fitted vs actual training data 

plot(x=train.data$Meal_Midrange, y =  MealH$fitted.values, xlim = c(0,150), ylim = c(0,150), pch = 16, col = "blue",ylab = "Fitted Values - Meal Midrange", xlab ="Actual values - Meal Midrange" ,main = "Training Data Fitted versus Actual values")
abline(0,1, col = "red")

## Plot of Fitted vs actual testing data 

plot(x=test.data$Meal_Midrange, y =  test.predict,pch = 16, xlim = c(0,150), ylim = c(0,150),col = "blue",ylab = "Fitted Values - Meal Midrange", xlab ="Actual values - Meal Midrange" ,main = "Testing Data Fitted versus Actual values")
abline(0,1, col = "red")

##Full Data prediction

test.predict.fullmodel <- predict(MealH, newdata = new.cost.of.living)

sqrt(mean((test.predict.fullmodel-new.cost.of.living$Meal_Midrange)^2))

## Plot of Fitted vs Actual Full Data

plot(x=new.cost.of.living$Meal_Midrange, y =  test.predict.fullmodel,xlim = c(0,150), ylim = c(0,150),pch = 16, col = "blue",ylab = "Fitted Values - Meal Midrange", xlab ="Actual values - Meal Midrange" ,main = "Full Data Data Fitted versus Actual values")
abline(0,1, col = "red")


plot(density(rstudent(MealH)))

library(ggplot2)
library(caret)
library(lattice)
help(vif)


car::vif(MealH)

For.plot <- cbind.data.frame(Meal_Midrange, Chicken_breasts, Imported_beer, Water , Eggs  , Tomato_1kg , Onion_1kg  , Roundbeef_1kg , White_bread)

pairs(For.plot)



vif(lm(Meal_Midrange ~ Chicken_breasts+Imported_beer  + Water + Eggs + Tomato_1kg + Onion_1kg , data = train.data))
