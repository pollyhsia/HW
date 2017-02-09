data()
?Orange
View(Orange)
attach(Orange)
#tree1的散佈圖  ??:不同種的樹如何畫在同一張
plot(x = Orange[c(1:7),2], y = Orange[c(1:7),3], 
     main = "scatter plot for age and circumference"
     , xlab = "age of tree", ylab = "trunk circumference")

#tree1的線圖
plot(x = Orange[c(1:7),2], y = Orange[c(1:7),3], 
     main = "scatter plot for age and circumference"
     , xlab = "age of tree", ylab = "trunk circumference",type = "l")

#tree1直方圖
hist(Orange[c(1:7),3],main = "histogram of tree1's circumference"
     , xlab = "tree1's circumference",freq = T)

#盒鬚圖  ??:如何照順序
boxplot(circumference ~ Tree)

#長條圖

# avg1 = sum(Orange[c(1:7),3])/7
# avg2 = sum(Orange[c(8:14),3])/7
# avg3 = sum(Orange[c(15:21),3])/7
# avg4 = sum(Orange[c(22:28),3])/7
# avg5 = sum(Orange[c(29:35),3])/7
# avg = c(avg1,avg2,avg3,avg4,avg5)
# avg = as.vector(avg)
# Tree1 = c(1,2,3,4,5)
# Tree1 = as.vector(Tree1)
# table(Tree1~avg)
barplot(table(Tree))

