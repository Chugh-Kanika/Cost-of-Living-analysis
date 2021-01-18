attach(new.cost.of.living)
names(new.cost.of.living)

MealA <- lm(Meal_Midrange ~ Chicken_breasts+Imported_beer + Coke_Pepsi + Water + Eggs + Local_cheese + Bottle_wine + Potato_1kg + Tomato_1kg + Onion_1kg + Rice_1kg + Roundbeef_1kg + White_bread, data = new.cost.of.living)
summary(MealA)

##Remove Bottle of wine
MealB <- lm(Meal_Midrange ~ Chicken_breasts+Imported_beer + Coke_Pepsi + Water + Eggs + Local_cheese + Potato_1kg + Tomato_1kg + Onion_1kg + Rice_1kg + Roundbeef_1kg + White_bread, data = new.cost.of.living)
summary(MealB)

##Remove Rice

MealC <- lm(Meal_Midrange ~ Chicken_breasts+Imported_beer + Coke_Pepsi + Water + Eggs + Local_cheese + Potato_1kg + Tomato_1kg + Onion_1kg + Roundbeef_1kg + White_bread, data = new.cost.of.living)
summary(MealC)

##Remove Potato

MealD <- lm(Meal_Midrange ~ Chicken_breasts+Imported_beer + Coke_Pepsi + Water + Eggs + Local_cheese + Tomato_1kg + Onion_1kg + Roundbeef_1kg + White_bread, data = new.cost.of.living)
summary(MealD)

## Remove Coke Pepsi

MealE <- lm(Meal_Midrange ~ Chicken_breasts+Imported_beer + Water + Eggs + Local_cheese + Tomato_1kg + Onion_1kg + Roundbeef_1kg + White_bread, data = new.cost.of.living)
summary(MealE)

## Remove local cheese

MealF <- lm(Meal_Midrange ~ Chicken_breasts+Imported_beer + Water + Eggs  + Tomato_1kg + Onion_1kg + Roundbeef_1kg + White_bread, data = new.cost.of.living)
summary(MealF)

test.rows <-sample(1:nrow(new.cost.of.living), size = 50)

test.data <-new.cost.of.living[test.rows, ]
train.data <- new.cost.of.living[-test.rows,]

nrow(test.data)
nrow(train.data)


Meal.trainmodel <- lm(Meal_Midrange ~ Chicken_breasts+Imported_beer + Water + Eggs  + Tomato_1kg + Onion_1kg + Roundbeef_1kg + White_bread, data = train.data)
summary(Meal.trainmodel)

