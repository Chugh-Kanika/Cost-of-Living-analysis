attach(new.cost.of.living)
source("https://raw.githubusercontent.com/talgalili/R-code-snippets/master/boxplot.with.outlier.label.r") # Load the function


label <- City




boxplot.with.outlier.label(Meal_Inexpensive,label,col = "wheat")
boxplot.with.outlier.label(Meal_Midrange,label,col = "wheat")
boxplot.with.outlier.label(Milk,label,col = "wheat", ylim = c(0,5))

boxplot.with.outlier.label(White_bread,label,col = "wheat")
boxplot.with.outlier.label(Chicken_breasts,label,col = "wheat")

boxplot.with.outlier.label(Apartment3_in_citycenter,label,col = "wheat", ylim = c(0,7000))


windows(height = 15, width = 10)
boxplot.with.outlier.label(Purchase_apt_in,label,col = "wheat", ylim = c(-10000,40000), push_text_right = 1)




