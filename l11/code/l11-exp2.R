A=c(1,0,1)
B=c(1,1,0)
C=c(0,1,0)
D=c(1,1,0)
E=c(8,0,7)
Ff=c(0,1,1)

da=cbind(A,B,C,D,E,Ff)
da
# A B C D E Ff
# [1,] 1 1 0 1 8  0
# [2,] 0 1 1 1 0  1
# [3,] 1 0 0 0 7  1
chisq.test(da)
# Pearson's Chi-squared test
# 
# data:  da
# X-squared = 14.96, df = 10, p-value = 0.1335
# 
# Warning message:
# In chisq.test(da) : Chi-squared approximation may be incorrect
fisher.test(da)
# Fisher's Exact Test for Count Data
# 
# data:  da
# p-value = 0.02613
# alternative hypothesis: two.sided