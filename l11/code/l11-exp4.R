Satisfaction <-
  as.table(array(c(1, 2, 0, 0, 3, 3, 1, 2,
                   11, 17, 8, 4, 2, 3, 5, 2,
                   1, 0, 0, 0, 1, 3, 0, 1,
                   2, 5, 7, 9, 1, 1, 3, 6),
                 dim = c(4, 4, 2),
                 dimnames =
                   list(Income =
                          c("<5000", "5000-15000",
                            "15000-25000", ">25000"),
                        "Job Satisfaction" =
                          c("Very_D", "A Little_S", "Moderately_S", "Very_S"),
                        Gender = c("Female", "Male"))))
Satisfaction
# , , Gender = Female
# 
# Job Satisfaction
# Income        Very_D A Little_S Moderately_S Very_S
# <5000            1          3           11      2
# 5000-15000       2          3           17      3
# 15000-25000      0          1            8      5
# >25000           0          2            4      2
# 
# , , Gender = Male
# 
# Job Satisfaction
# Income        Very_D A Little_S Moderately_S Very_S
# <5000            1          1            2      1
# 5000-15000       0          3            5      1
# 15000-25000      0          0            7      3
# >25000           0          1            9      6
## (Satisfaction categories abbreviated for convenience.)
ftable(. ~ Gender + Income, Satisfaction)
#                    Job Satisfaction Very_D A Little_S Moderately_S Very_S
# Gender Income                                                            
# Female <5000                             1          3           11      2
#        5000-15000                        2          3           17      3
#        15000-25000                       0          1            8      5
#        >25000                            0          2            4      2
# Male   <5000                             1          1            2      1
#        5000-15000                        0          3            5      1
#        15000-25000                       0          0            7      3
#        >25000                            0          1            9      6
## Table 7.8 in Agresti (2002), p. 288.
mantelhaen.test(Satisfaction)

# Cochran-Mantel-Haenszel test
# 
# data:  Satisfaction
# Cochran-Mantel-Haenszel M^2 = 10.2, df = 9, p-value = 0.3345