data(grass)
attach(grass)
grass

da=matrix(evaluation,12,4)
rownames(da)=paste0("judge",1:12)
colnames(da)=paste0("trt",1:4)
da
#         trt1 trt2 trt3 trt4
# judge1   4.0  3.0  2.0  1.0
# judge2   4.0  2.0  3.0  1.0
# judge3   3.0  1.5  1.5  4.0
# judge4   3.0  1.0  2.0  4.0
# judge5   4.0  2.0  1.0  3.0
# judge6   2.0  2.0  2.0  4.0
# judge7   1.0  3.0  2.0  4.0
# judge8   2.0  4.0  1.0  3.0
# judge9   3.5  1.0  2.0  3.5
# judge10  4.0  1.0  3.0  2.0
# judge11  4.0  2.0  3.0  1.0
# judge12  3.5  1.0  2.0  3.5
friedman(judge,trt,evaluation,console=T)
# Study: evaluation ~ judge + trt 

# trt,  Sum of the ranks

#    evaluation  r
# t1       38.0 12
# t2       23.5 12
# t3       24.5 12
# t4       34.0 12

# Friedman's Test
# ===============
# Adjusted for ties
# Critical Value: 8.097345
# P.Value Chisq: 0.04404214
# F Value: 3.192198
# P.Value F: 0.03621547 

# Post Hoc Analysis

# Alpha: 0.05 ; DF Error: 33
# t-Student: 2.034515
# LSD: 11.48168 

# Treatments with the same letter are not significantly different.

#    Sum of ranks groups
# t1         38.0      a
# t4         34.0     ab
# t3         24.5      b
# t2         23.5      b
friedman.test(evaluation, trt, judge)

# 	Friedman rank sum test

# data:  evaluation, trt and judge
# Friedman chi-squared = 8.0973, df = 3, p-value = 0.04404
detach(grass)