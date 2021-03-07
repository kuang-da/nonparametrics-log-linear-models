n.1=n11+n21; p=n.1/n
nv=c(n11,n1-n11,n21,n2-n21)
ev=c(n1*p,n1*(1-p),n2*p,n2*(1-p))
cstat=sum((abs(nv -ev) - yates)^2/ev)
pchisq(cstat, 1, lower.tail = F)
# [1] 0.0001051636
prop.test(c(n11,n21),c(n1,n2))
# 2-sample test for equality of proportions with continuity correction
# 
# data:  c(n11, n21) out of c(n1, n2)
# X-squared = 15.042, df = 1, p-value = 0.0001052
# alternative hypothesis: two.sided
# 95 percent confidence interval:
#   -0.6170396 -0.2162937
# sample estimates:
#   prop 1    prop 2 
# 0.3333333 0.7500000
xm=matrix(c(n11,n1-n11,n21,n2-n21),2,2)
chisq.test(xm)
# Pearson's Chi-squared test with Yates' continuity correction
# 
# data:  xm
# X-squared = 15.042, df = 1, p-value = 0.0001052