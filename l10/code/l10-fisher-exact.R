TeaTasting=
  matrix(c(3, 1, 1, 3),
         nrow = 2,
         dimnames = list(Truth = c("Milk", "Tea"),
                         Guess = c("Milk", "Tea")))

TeaTasting
#         Guess
# Truth  Milk Tea
#   Milk    3   1
#   Tea     1   3
fisher.test(TeaTasting,alternative="g")
# Fisher's Exact Test for Count Data
# 
# data:  TeaTasting
# p-value = 0.2429
# alternative hypothesis: true odds ratio is greater than 1
# 95 percent confidence interval:
#  0.3135693       Inf
# sample estimates:
# odds ratio 
#   6.408309 
dhyper(x=3,m=4,4,k=4)
# [1] 0.2285714
dhyper(x=4,m=4,4,k=4)
# [1] 0.01428571