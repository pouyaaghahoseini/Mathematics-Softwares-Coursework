function P = ProbLottery(m,r,n)
P=Cxy(r,m).*Cxy(n-r,r-m)./Cxy(n,r);
function C = Cxy(x,y)
C=factorial(x)./(factorial(y).*factorial(x-y));