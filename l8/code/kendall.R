cor(x,y,method="kendal")
# [1] 0.4444444
cor.test(x,y,method = "kendall",
         alternative="g")
# Kendall's rank correlation tau

# data:  x and y
# T = 26, p-value = 0.05972
# alternative hypothesis: true tau is greater than 0
# sample estimates:
#       tau 
# 0.4444444
n2=n*(n-1)/2
oy=outer(y,y,"-"); z=oy[lower.tri(oy)]
ox=outer(x,x,"-"); w=ox[lower.tri(ox)]
Tstat=sum(z*w>0)
Tstat
# [1] 26
K=2*Tstat-n2 # K=T- [n(n-1)/2-T] ;
K/n2
# [1] 0.4444444
sdk=sqrt(2*n2*(2*n+5)/18)
K/sdk
# [1] 1.668115
pnorm(K/sdk,lower.tail=F)
# [1] 0.04764642
cor.test(x,y,method="kendall",exact=F,
         alternative="g")
#          Kendall's rank correlation tau

# data:  x and y
# z = 1.6681, p-value = 0.04765
# alternative hypothesis: true tau is greater than 0
# sample estimates:
#       tau 
# 0.4444444 