library(BSDA)
x=c(1.83,0.50,1.62,2.48,1.68,1.88,1.55,3.06,1.30);
y=c(0.878,0.647,0.598,2.05,1.06,1.29,1.06,3.14,1.29);
SIGN.test(x,y);
# Dependent-samples Sign-Test
# 
# data:  x and y
# S = 7, p-value = 0.1797
# alternative hypothesis: true median difference is not equal to 0
# 95 percent confidence interval:
#   -0.0730000  0.9261778
# sample estimates:
#   median of x-y 
# 0.49 
# 
# Achieved and Interpolated Confidence Intervals: 
#   
#   Conf.Level L.E.pt U.E.pt
# Lower Achieved CI     0.8203  0.010 0.6200
# Interpolated CI       0.9500 -0.073 0.9262
# Upper Achieved CI     0.9609 -0.080 0.9520

n=length(x)
test.stat=(sum(x>y)-n/2)/sqrt(n/4)
t2=test.stat^2
c(2*pnorm(test.stat,lower.tail=F),t2, 
  pchisq(t2,1,lower.tail=F))
# [1] 0.0955807 2.7777778 0.0955807
da=cbind(z=c(x,y),gr=c(rep(1,n),rep(2,n)),
         blk=rep(1:n,2))
da
# z gr blk
# [1,] 1.830  1   1
# [2,] 0.500  1   2
# [3,] 1.620  1   3
# [4,] 2.480  1   4
# [5,] 1.680  1   5
# [6,] 1.880  1   6
# [7,] 1.550  1   7
# [8,] 3.060  1   8
# [9,] 1.300  1   9
# [10,] 0.878  2   1
# [11,] 0.647  2   2
# [12,] 0.598  2   3
# [13,] 2.050  2   4
# [14,] 1.060  2   5
# [15,] 1.290  2   6
# [16,] 1.060  2   7
# [17,] 3.140  2   8
# [18,] 1.290  2   9
friedman.test(z~gr|blk,data=da)
# Friedman rank sum test
# 
# data:  z and gr and blk
# Friedman chi-squared = 2.7778, df = 1, p-value = 0.09558
wilcox.test(x,y,paired=T)
# 	Wilcoxon signed rank exact test

# data:  x and y
# V = 40, p-value = 0.03906
# alternative hypothesis: true location shift is not equal to 0