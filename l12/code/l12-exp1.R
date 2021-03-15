da=matrix(c(26,7,15,37),2)
teststat=(15-7)^2/(15+7)
pchisq(teststat,1,lower.tail=F)
# [1] 0.08808151
mcnemar.test(da,correct=F)
# McNemar's Chi-squared test
# 
# data:  da
# McNemar's chi-squared = 2.9091, df = 1, p-value = 0.08808
pchisq((abs(15-7)-1)^2/(15+7),1,lower.tail=F)
# [1] 0.135593
mcnemar.test(da)
# McNemar's Chi-squared test with continuity correction
# 
# data:  da
# McNemar's chi-squared = 2.2273, df = 1, p-value = 0.1356