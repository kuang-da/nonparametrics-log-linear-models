nstat=(15-7)/sqrt(15+7)
pv=2*pnorm(nstat,lower.tail=F)
pexact=2*pbinom(14,22,prob=1/2,lower.tail=F)
c(pv,pexact)
# [1] 0.08808151 0.13380051