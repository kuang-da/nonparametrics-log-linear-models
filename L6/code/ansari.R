x= c(111, 107, 100, 99, 102, 106, 109, 108, 104, 99,
101, 96, 97, 102, 107, 113, 116, 113, 110, 98)
y=c(107, 108, 106, 98, 105, 103, 110, 105, 104,
100, 96, 108, 103, 104, 114, 114, 113, 108, 106, 99)
plot(x,y)
ansari.test(x,y)

# Ansari-Bradley test
# 
# data:  x and y
# AB = 185.5, p-value = 0.1815
# alternative hypothesis: true ratio of scales is not equal to 1