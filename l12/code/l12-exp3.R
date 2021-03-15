pbinom(14, size=22, prob=1/2, lower.tail=F)
# [1] 0.06690025
binom.test(15,22,1/2,alternative="g")
# Exact binomial test
# 
# data:  15 and 22
# number of successes = 15, number of trials = 22, p-value = 0.0669
# alternative hypothesis: true probability of success is greater than 0.5
# 95 percent confidence interval:
#         0.4845433 1.0000000
# sample estimates:
#         probability of success 
# 0.6818182 
library(BSDA)
x=c(rep(1,15),rep(0,7))
y=c(rep(0,15),rep(1,7))
cbind(x,y)
SIGN.test(x,y,alternative="g")
# Dependent-samples Sign-Test
# 
# data:  x and y
# S = 15, p-value = 0.0669
# alternative hypothesis: true median difference is greater than 0
# 95 percent confidence interval:
#         0.1687213       Inf
# sample estimates:
#         median of x-y 
# 1 
# 
# Achieved and Interpolated Confidence Intervals: 
#         
#         Conf.Level  L.E.pt U.E.pt
# Lower Achieved CI     0.9331  1.0000    Inf
# Interpolated CI       0.9500  0.1687    Inf
# Upper Achieved CI     0.9738 -1.0000    Inf