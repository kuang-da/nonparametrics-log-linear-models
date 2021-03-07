x=c(44.4,45.9, 41.9,53.3,44.7,44.1,50.7,45.2,60.1)
y=c(2.6,3.1,2.5, 5.0,3.6,4.0,5.2,2.8, 3.8)
n=length(x)
cor(x,y)
cor(x,y,method="pearson")
# [1] 0.5711816
mx=mean(y); my=mean(y)
sum((x-mx)*(y-my))/(sd(x)*sd(y)*(n-1))
# [1] 0.5711816
cor.test(x,y,method="pearson",alternative="greater")
# 	Pearson's product-moment correlation

# data:  x and y
# t = 1.8411, df = 7, p-value = 0.05409
# alternative hypothesis: true correlation is greater than 0
# 95 percent confidence interval:
#  -0.02223023  1.00000000
# sample estimates:
#       cor 
# 0.5711816 
cor.test(x,y,method="pearson",alternative="less")
# Pearson's product-moment correlation

# data:  x and y
# t = 1.8411, df = 7, p-value = 0.9459
# alternative hypothesis: true correlation is less than 0
# 95 percent confidence interval:
#  -1.0000000  0.8669786
# sample estimates:
#       cor 
# 0.5711816 
cor.test(x,y,method="pearson",alternative="two.sided")
# Pearson's product-moment correlation

# data:  x and y
# t = 1.8411, df = 7, p-value = 0.1082
# alternative hypothesis: true correlation is not equal to 0
# 95 percent confidence interval:
#  -0.1497426  0.8955795
# sample estimates:
#       cor 
# 0.5711816 
pr=cor(x,y); stat=pr*sqrt((n-2)/(1-pr^2))
c(stat , pt(stat,n-2,lower.tail=F) )
# [1] 1.84108264 0.05408653