گروه 10

x=0:0.01:5;
f0=x.^2-10*sqrt(x)+2;
plot(x,f);
axis([-4 3 -200 1000]);
plot(x,f);

xt=linspace(0,2*pi,200);
gt=sin(x).^cos(x).*cos(2*x);
fpt=2*sin(x).*cos(x).*cos(2*x)-2*sin(x).^2.*sin(2*x);
plot(x,g,x,fp,'*');

x=-3:1:10;
f2=(0.5*x^4 + 1.1*x^3 - 0.9*x.^2)^exp(-0.7*x);

x=-7:7;
f3=3*cos(1.7*x)*exp(-0.3*x)+2*sin(1.4*x)*exp(0.3*x);

//4
x=0:0.1:10;
f4=(x.^2).*exp(-x);
f4prime=2*x.*exp(-x)-x.*2.*exp(-x);
plot(x,f4)

//5
x=-3:0.01:4;
y=0:0.01:1;
w=0:0.1:2;

f5=x.^4-2*x.^3+1.3*x.^2-0.3*x+0.02;
g5=y.^4-2*y.^3+1.3*y.^2-0.3*y+0.02;
t=w.^4-2*w.^3+1.3*w.^2-0.3*w+0.02;
figure(1)
plot(x,f5)
figure(2)
plot(y,g5)
figure(3)
plot(w,t)

//6
fplot(@ (x) 5*(exp(-5*x)-exp(-0.8*x)),[0 10])

//7
x=-pi:0.1:2*pi;
f7=sin(2*x).*cos(0.5*x).^2
f7prime=2*cos(2*x).*cos(0.5*x).^2-cos(0.5*x).*sin(0.5*x)
plot(x,f7,x,f7prime,'--')

//8
t:-2*pi:0.1:2*pi;
r=(3.44*10^7)/1-0.206*cos(t)
polar(t,r)

//9
t=0:0.01:pi;
x=0.7*sin(10*t)
y=1.2*sin(8*t)
plot(x,y)
axis([-1.5 1.5 -1.5 1.5]);

//10
tp=0:0.01:10*pi;
t=0:0.01:2*pi;
x=sin(t).*(exp(cos(t))-2*cos(4*t)+sin(t/12).^5);
y=cos(t).*(exp(cos(t))-2*cos(4*t)+sin(t/12).^5);

xp=sin(tp).*(exp(cos(tp))-2*cos(4*tp)+sin(tp/12).^5);
yp=cos(tp).*(exp(cos(tp))-2*cos(4*tp)+sin(tp/12).^5);

plot(x,y,xp,yp)

%11
axis([-1 5 -1 5]);
fimplicit(@(x,y) x.^(2/3) + y.^(2/3) - 1)


%13
x=0:0.1:1.9;
xp=2.1:0.1:4;
f=(x.^2-6*x+7)./(x.^3-8);
fp=(xp.^2-6*xp+7)./(xp.^3-8);
plot(x,f,xp,fp)