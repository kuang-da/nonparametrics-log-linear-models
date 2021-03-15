Performance=
  matrix(c(794, 86, 150, 570),
         nrow = 2,
         dimnames = list("1st Survey" = c("Approve", "Disapprove"),
                         "2nd Survey" = c("Approve", "Disapprove")))

(794+150)/1600 # [1] 0.59
(794+86)/1600 # [1] 0.55

# the proportion of going from approval to disapproval is higher than
# the proportion of going from disapproval to approval.
(150-86)/1600 # [1] 0.04

Performance
#                 2nd Survey
# 1st Survey   Approve Disapprove
# Approve        794        150
# Disapprove      86        570
mcnemar.test(Performance,correct=F)
# McNemar's Chi-squared test
# 
# data:  Performance
# McNemar's chi-squared = 17.356, df = 1, p-value = 3.099e-05

n10=150
n01=86
tstat=(n10-n01)^2/(n10+n01)
pchisq(tstat,1,lower.tail=F)
# [1] 3.099293e-05

mcnemar.test(Performance)
# McNemar's Chi-squared test with continuity correction
# 
# data:  Performance
# McNemar's chi-squared = 16.818, df = 1, p-value = 4.115e-05
tstat=(abs(n10-n01)-1)^2/(n10+n01)
pchisq(tstat,1,lower.tail=F)
# [1] 4.114562e-05
