n1=60; n2=40; n=n1+n2; n11=20; n21=30;
p1=n11/n1; # 0.3333333
p2=n21/n2; # 0.75
p=(n11+n21)/n; # 0.5
stat=(p1-p2)/sqrt(p*(1-p)/n1+p*(1-p)/n2)
stat # -4.082483
2*pnorm(stat) # 4.455709e-05
stat^2  # 16.66667
pchisq(stat^2,1,lower.tail=F) # 4.455709e-05