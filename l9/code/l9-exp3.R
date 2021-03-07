yates=min(0.5,abs(p1-p2)/(1/n1+1/n2))
# Confidence Internval
p1-p2+c(-1,1)*(z*s+yates*(1/n1+1/n2))
# [1] -0.6170396 -0.2162937
prop.test(c(n11,n21),c(n1,n2))
# 2-sample test for equality of proportions with continuity correction
# data:  c(n11, n21) out of c(n1, n2)
# X-squared = 15.042, df = 1, p-value = 0.0001052
# alternative hypothesis: two.sided
# 95 percent confidence interval:
#   -0.6170396 -0.2162937
# sample estimates:
#   prop 1    prop 2 
# 0.3333333 0.7500000 