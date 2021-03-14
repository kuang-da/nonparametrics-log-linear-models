## Penicillin and Rabbits
## Investigation of the effectiveness of immediately injected or 1.5
##  hours delayed penicillin in protecting rabbits against a lethal
##  injection with beta-hemolytic streptococci.

Rabbits <-
  array(c(0, 0, 6, 5,
          3, 0, 3, 6,
          6, 2, 0, 4,
          5, 6, 1, 0,
          2, 5, 0, 0),
        dim = c(2, 2, 5),
        dimnames = list(
          Delay = c("None", "1.5h"),
          Response = c("Cured", "Died"),
          Penicillin.Level = c("1/8", "1/4", "1/2", "1", "4")))
Rabbits
# , , Penicillin.Level = 1/8
# 
# Response
# Delay  Cured Died
# None     0    6
# 1.5h     0    5
# 
# , , Penicillin.Level = 1/4
# 
# Response
# Delay  Cured Died
# None     3    3
# 1.5h     0    6
# 
# , , Penicillin.Level = 1/2
# 
# Response
# Delay  Cured Died
# None     6    0
# 1.5h     2    4
# 
# , , Penicillin.Level = 1
# 
# Response
# Delay  Cured Died
# None     5    1
# 1.5h     6    0
# 
# , , Penicillin.Level = 4
# 
# Response
# Delay  Cured Died
# None     2    0
# 1.5h     5    0

## Classical Mantel-Haenszel test
mantelhaen.test(Rabbits)
# Mantel-Haenszel chi-squared test with continuity correction
# 
# data:  Rabbits
# Mantel-Haenszel X-squared = 3.9286, df = 1, p-value = 0.04747
# alternative hypothesis: true common odds ratio is not equal to 1
# 95 percent confidence interval:
#   1.026713 47.725133
# sample estimates:
#   common odds ratio 
# 7 