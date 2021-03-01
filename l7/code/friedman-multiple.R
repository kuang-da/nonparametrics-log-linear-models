warpbreaks
wb= aggregate(warpbreaks$breaks,
   by = list(gr = warpbreaks$wool,
   bk = warpbreaks$tension),FUN = mean)
wb
#  gr bk        x
# 1  A  L 44.55556
# 2  B  L 28.22222
# 3  A  M 24.00000
# 4  B  M 28.77778
# 5  A  H 24.55556
# 6  B  H 18.77778
friedman.test(wb$x, wb$gr, wb$bk)
friedman.test(x ~ gr| bk, data = wb) 
# Friedman rank sum test

# data:  wb$x, wb$gr and wb$bk
# Friedman chi-squared = 0.33333, df = 1, p-value = 0.5637
install.packages("agricolae")
library(agricolae)
# friedman(wb$bk,wb$gr,wb$x,console=T)
# Study: wb$x ~ wb$bk + wb$gr 

# wb$gr,  Sum of the ranks

#   wb.x r
# A    5 3
# B    4 3

# Friedman's Test
# ===============
# Adjusted for ties
# Critical Value: 0.3333333
# P.Value Chisq: 0.5637029
# F Value: 0.25
# P.Value F: 0.6666667 

# Post Hoc Analysis

# Alpha: 0.05 ; DF Error: 2
# t-Student: 4.302653
# LSD: 8.605305 

# Treatments with the same letter are not significantly different.

#   Sum of ranks groups
# A            5      a
# B            4      a