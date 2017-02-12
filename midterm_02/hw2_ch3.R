data()
?Orange
View(Orange)
attach(Orange)
#tree1的散佈圖  ??:不同種的樹如何畫在同一張
# plot(x = Orange[c(1:7),2], y = Orange[c(1:7),3], 
#      main = "scatter plot for age and circumference"
#      , xlab = "age of tree", ylab = "trunk circumference")
##解答
newTree <- factor(Tree, ordered = T,levels = c("1","2","3","4","5"))
pchMap <- c(1,2,3,4,5)
colorMap <- c("red","black","blue","green","purple")
plot(age, circumference, col = colorMap, pch = pchMap )
legend("topleft",c("1","2","3","4","5"), pch = c(1,2,3,4,5),col = colorMap)

?legend
#用ggplot
#?aes
#?geom_point
# ggplot(Orange, aes(x = age, y = circumference, color = Tree)) +
#   geom_point(aes(shape=Tree)) 


#tree1的線圖

plot(x = Orange[c(1:7),2], y = Orange[c(1:7),3], 
     main = "scatter plot for age and circumference"
     , xlab = "age of tree", ylab = "trunk circumference",type = "l")



#tree1直方圖
hist(Orange[c(1:7),3],main = "histogram of tree1's circumference"
     , xlab = "tree1's circumference",freq = T)

#盒鬚圖  ??:如何照順序 Ok!
class(Orange$Tree)
Orange$Tree
newTree <- factor(Tree, ordered = T,levels = c("1","2","3","4","5"))
boxplot(circumference ~ Tree)

#長條圖 ??:每個tree一個平均數

avg1 = sum(Orange[c(1:7),3])/7
avg2 = sum(Orange[c(8:14),3])/7
avg3 = sum(Orange[c(15:21),3])/7
avg4 = sum(Orange[c(22:28),3])/7
avg5 = sum(Orange[c(29:35),3])/7
avg = c(avg1,avg2,avg3,avg4,avg5)
avg = as.vector(avg)

names(avg) <- c("avg1", "avg2", "avg3", "avg4", "avg5")
barplot(avg)
