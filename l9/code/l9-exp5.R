n11=50; n12=40; n21=60; n22=50;
xm=matrix(c(n11,n12,n21,n22),2,2)
xm
#      [,1] [,2]
# [1,]   50   60
# [2,]   40   50
chisq.test(xm,correct=F)
# Pearson's Chi-squared test
# 
# data:  xm
# X-squared = 0.020406, df = 1, p-value = 0.8864

n1=n11+n12
n2=n21+n22
prop.test(c(n11,n21),c(n1,n2),correct=F)
# 2-sample test for equality of proportions without continuity correction
# 
# data:  c(n11, n21) out of c(n1, n2)
# X-squared = 0.020406, df = 1, p-value = 0.8864
# alternative hypothesis: two.sided
# 95 percent confidence interval:
#   -0.1284537  0.1486558
# sample estimates:
#   prop 1    prop 2 
# 0.5555556 0.5454545 

chitest=chisq.test(xm,correct=F)
names(chitest)
# [1] "statistic" "parameter" "p.value"   "method"    "data.name" 
# "observed"  "expected"  "residuals"
# [9] "stdres"
chitest$observed
#       [,1] [,2]
# [1,]   50   60
# [2,]   40   50
chitest$expected
#       [,1] [,2]
# [1,] 49.5 60.5
# [2,] 40.5 49.5