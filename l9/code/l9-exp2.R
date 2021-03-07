s=sqrt(p1*(1-p1)/n1+p2*(1-p2)/n2) # 0.09160351
z=qnorm(0.975) # 1.959964
# Confidence Internval
p1-p2+c(-1,1)*z*s
# [1] -0.5962063 -0.2371271

prop.test(c(n11,n21),c(n1,n2),correct=F)
# 2-sample test for equality of proportions without continuity correction
# data:  c(n11, n21) out of c(n1, n2)
# X-squared = 16.667, df = 1, p-value = 4.456e-05
# alternative hypothesis: two.sided
# 95 percent confidence interval:
#   -0.5962063 -0.2371271
# sample estimates:
#   prop 1    prop 2 
# 0.3333333 0.7500000 