%Group 10 - Pouya Aghahoseini, Ehsan Karimi
%Chapter 9
%1
fplot('x.^3-exp(0.8*x)-20',[0 8])
x1=fzero('x.^3-exp(0.8*x)-20',3.2)
x2=fzero('x.^3-exp(0.8*x)-20',7.5)

%2
fplot(@(x)3*sin(0.5.*x)-0.5.*x+2,[5 7])
x=fzero(@(x)3*sin(0.5.*x)-0.5.*x+2,5.8,optimset('display','iter'))

%3
fplot(@(x)x.^3-x.^2.*exp(-0.5.*x)-3*x+1,[0 5])
grid on
x1=fzero(@(x)x.^3-x.^2.*exp(-0.5.*x)-3*x+1,0.3)a
x2=fzero(@(x)x.^3-x.^2.*exp(-0.5.*x)-3*x+1,-1.25)
x3=fzero(@(x)x.^3-x.^2.*exp(-0.5.*x)-3*x+1,1.8)

%4
F= @(x) cos(x).^2 -0.5*x.*exp(0.3*x)+5;
fplot(F,[-10 10])
grid on
x1=fzero(F,3.7)

%5
A= @(t) 49*(t-sin(t))./2-21.2;
fplot(A,[0 10])
x=fzero(A,1.8)

%6
S= @(t) 5*cos(t)+sqrt(64-(5*sin(t)-1.5*1.5).^2)-9;
grid on
fplot(S,[0 10])
x1=fzero(S,1.3)
x2=fzero(S,5.4)
x3=fzero(S,7.5)

%7
R=0.08206;
n=1.5;
a=1.39;
b=0.03913;
t=350;
P= @(v) (n*R*t)/(v-b) - ((n^2)*a)/(v^2) - 70;
grid on
fplot(P,[0.1 1])
x=fzero(P,0.1)

%8
 M=0.1; g=9.81; C=1;row=1000; beta=10; tet=10; 
 %d=0.1
 F=@(x) sqrt(16*M*g./(pi*C*row*x.^2))./(sqrt(1-(8*M*tand(beta)^2)./(pi*x.^3*C*row*sind(tet))))-0.8;
 dia=fzero(F,0.12)
 Fp=@(x) sqrt(16*M*g./(pi*C*row*x.^2))./(sqrt(1-(8*M*tand(beta)^2)./(pi*x.^3*C*row*sind(tet)))); 
 xp=0.05:0.0001:0.15; 
 Velp=Fp(xp);
 plot(xp,Velp)
 xlabel('Diameter (m)') 
 ylabel('Velocity (m/s)')
 
%9
R=80
c=18*10^-6
l=260*10^-3
v=10
i=0.1
g=@(f) v\sqrt(R^2+[2*pi*f*l-1\(2*pi*f*c)]^2-i)
g=fzero(g,0)

%10
k=0.0004;
re=2000000;
f=@(t) -0.86*log(k/3.7+2.51/(re*sqrt(t)))-sqrt(1/t);
x=fzero(f,100)

%11
F= @(x)(2+(x-1.45).^2)./3+3.5*(0.8*x.^2-0.6*x+2);
G= @(x)-1*(2+(x-1.45).^2)./3+3.5*(0.8*x.^2-0.6*x+2);

fplot(F,[-100 100])
grid on
[xmin fvalmin]= fminbnd(F,0,1)
[xmax fvalmax]= fminbnd(G,-2,0)

%12
r=3:0.2:13;
R=14;
h=2*sqrt(R.^2-r.^2);
V=pi.*r.^2.*h;
plot(r,V)
xlabel('r (in.)')
ylabel('V (in.^3)')
VOL=@ (x) -pi.*x.^2.*2.*sqrt(R.^2-x.^2);
rVmax=fminbnd(VOL,10,13)
hVmax=2.*sqrt(R.^2-rVmax.^2)

%14
v=@ (x) -(sqrt(3)\4*(s-2*sqrt(3)\3*x)^2*x)
[g fval]=fminbnd(v,0,3)

%15
v=26;
c=15*10^(-6);
l=0.24;
r=22;
i=@(f) v/sqrt(r^2+(2*pi*f*l-1/(2*pi*f*c))^2);
ip=@(f) -(v/sqrt(r^2+(2*pi*f*l-1/(2*pi*f*c))^2));
fplot(i,[60,110])
[x fval]=fminbnd(ip,60,110)

%16
w=250
y=68
l=108
t=@(d) (w*l*y)/(d*sqrt(y^2-d^2))
[f fval]=fminbnd(t,0,3)

%17
F= @(x)(x.^3).*exp(-0.2*x)./(1+x.^2);
integral(F,1,11)


%18
f=@(x) nthroot((1+0.5.*x.^3-x.^2),4);
 q1=integral(f,0,3)
h=@(x) (x.*cos(x)+x.^2)./(exp(x));
 q2=integral(h,0,8)
 
%19
t=[0:7];
v=[0 14 39 69 95 114 129 139];
vfps=v*5280/3600;
xft=trapz(t,vfps)

%20
x=[0:0.4:2.8];
f=[0 0.85 1.3 1.6 1.87 2.14 2.34 2.52];
work=trapz(x,f)

%21
x1=[1 2 3 4 5 6 7 8 9 10 ]
y1=[2.5 4 4.7 4.5 2.5 2.5 4 5.5 6.2 6]
trapz(x1,y1)


%23
vmax=80; R=0.25; n=7;
F=@ (x) 2*pi*vmax*(1-x/R).^(1/n).*x;
Q=integral(F,0,R)

%24
clear, clc
t=linspace(0,2*pi,100);
b=5;
x=2*b*cos(t)-b*cos(2*t);
y=2*b*sin(t)-b*sin(2*t);
plot (x,y)
axis square
xd=-2*b*sin(t)+2*b*sin(2*t);
yd=2*b*cos(t)-2*b*sin(2*t);
F= @ (x) sqrt((-2*b*sin(x)+2*b*sin(2*x)).^2+(2*b*cos(x)-2*b*sin(2*x)).^2);
L=integral(F,0,2*pi)

%25
% U=quad('500*6371000^2*9.81./(6371000+x).^2',0,800000)

%26
clear, clc
x=40:20:260;
y1=[60 80 77 90 100 120 120 117 119 125 130 130];
y_above=y1-60;
y2=[60 80 83 80 80 60 60 60 60 60 60 60];
y_below=y2-60;
A=trapz(x,y_above)+trapz(x,y_below)

%28
a=40; b=15;
F=@ (x) x.*sqrt(1-(x.^2/a^2));
A=pi*a*b/2;
My=2*b*integral(F,0,a);
xcent=My/A

%29
a=5.7909e7; b=5.1614e7;
k=sqrt(a^2-b^2)/a;
F=@ (x) sqrt(1-k^2*sin(x).^2);
q=integral(F,0, pi/2);
P=4*a*q;
% Number of hours in 88 days.
hrs=24*88
vAve=P/hrs

%30
si=@(x) sin(x.^2);
co=@ (x) cos(x.^2);
x=0:0.05:4;
n=length(x);
for i=1:n
S(i)=integral(si,0,x(i));
C(i)=integral(co,0,x(i));
end
plot(x,S,'k-',x,C,'k--','linewidth',2)
%legend('S','T','fontsize',18)
legend('S','T')
xlabel('x','fontsize',18)
figure
plot(C,S,'k','linewidth',2)
xlabel('C','fontsize',18)
ylabel('S','fontsize',18)

%31
a=0; b=5;
ya=3;
F=@ (x,y) (x.^2.*sqrt(y)/(5))- 2.*x;
[x,y]=ode45(F,[a:.005:b],ya);
plot(real(x),imag(y))
xlabel('x')
ylabel('y')

%32
F=@(x,y) -x^2+x^3*exp(-y)/4;
[x y]=ode45(F,[1:0.05:5],1);
plot(x,y,'k','linewidth',2)
xlabel('x','fontsize',18)
ylabel('y','fontsize',18)

%33
a=0; b=0.8
ya=3^(1/2);
F=@ (x,y) (1+y.^2).*tan(x);
[x,y]=ode45(F,[a:.005:b],ya);
plot(x,y)
xlabel('x')
ylabel('y')
xp=linspace(0,8,10);
Fsol=@ (x) -tan(log(cos(x)-pi/3));
yp=Fsol(xp);
hold on 
plot(real(xp),imag(yp),'*')
hold off


%34
a=1; b=5;
ya=1;
F=@ (x,y) (-x.^2)+((x.^3.*exp(-y))/4);
[x,y]=ode45(F,[a:.005:b],ya);
plot(x,y)
xlabel('x')
ylabel('y')

%35
clear, clc 
a=5; b=2;
dwdt=@ (t,w) a*w^(2/3)-b*w;
wa=0.5;
[t w]=ode45(dwdt,[1:0.1:10],wa); 
plot(t,w)
xlabel('Time (day)') 
ylabel('Weight (lb)')

%36
a=1.5; b=4; c=3; g=9.81; r=0.025;
rs=r^2;
dh=@ (t,h) sqrt(2*g*h)*rs/(a*b*(-1+(h-c)^2/c^2));
[t y]=ode45(dh,[0:0.1:5642.5],5.9);
plot(t,y,'k','linewidth',2)
xlabel('Time (s)','fontsize',18)
ylabel('Water Height (m)','fontsize',18)
tlast=t(length(t))
ylast=y(length(t))

%38
d= @ (t,v)-0.0035*v^2-3;
[t v]=ode45(d,[0:0.5:12],83.33);
subplot(2,1,1)
plot(t,v)
xlabel('Time (s)')
ylabel('velocity (m/s)')
n=length(t);
x(1)=0;
for i=2:n
 ti=t(1:i);
 vi=v(1:i);
x(i)=trapz(ti,vi);
end
subplot(2,1,2)
plot(t,x)
xlabel('Time (s)')
ylabel('Distance (m)')

