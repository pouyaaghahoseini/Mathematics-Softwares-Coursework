% Group 10 Pouya Aghahoseini, Ehsan Karimi
%Chapter 8
%1
x=-4:0.1:4
p= [0.9 -0.3 -15.5 7 36 -7];
y= polyval(p,x);
plot(x,y)

%2
x=-5:0.1:5;
p=[0.7 -13.5 6 -37];
y= polyval(p,x);
plot(x,y)

%3
r=[-0.7 0.5 3.4 5.8]
p = poly(r);
x=-1:0.1:6;
y=polyval(p,x);
plot(x,y)

%4
v = [2 -3 6];
w=[-5 0 4 -7];
c = conv(v,w);

%5
v = [1 1.8]
w=[1 -0.4]
s = [1 -1.6]
x=[1 0]
c = conv(conv(v,w),conv(s,x))
y= polyval(c,x);
plot(x,y)

%6
a=[-9 12 5 -9 17 -7 -15];
b=[3 -2 -3];
[q,r]=deconv(a,b)

%7
a=[0.9 -5.96 20.85 24.1 3 7.5];
b=[0.5 -2.2 6 3];
[q,r]=deconv(a,b)

%8
a=[2 0];
b=[2 2];
c=[2 4];
d=[2 6];
c=conv(conv(a,b),conv(c,d))
c(5)=-1488384
r=roots(c).*2


%9
a=[1 0];
b=[1 -3];
d=[1 -6];
c=conv(conv(a , b), d)
c(4)=-11960
r=roots(c)

%10
%z=x+57;
%y=28-2x;
a=[1 0];
b=[-2 28];
c=[1 57];
c=conv(conv(a,b),c);
c(4)=-6240
roots(c)



%11
clear,clc
V=1300/0.284;
Vout=240*120*80;
p1=[-1 240];
p2=[-1 120];
p3=[-2 80];
pa=conv(p1,p2);
Vin=conv(pa,p3);
p=Vin;
n=length(Vin);
Vin(n)=Vin(n)+V-Vout;
t=roots(Vin)

%12
% Part a
disp('Part a')
p=[4 -124 880 0]
% Part b
x=[0:0.2:11];
V=polyval(p,x);
plot(x,V)
xlabel('x (in.)')
ylabel('V (in^3)')
% Part c
disp('Part c')
pV1000=[4 -124 880 -1000];
x1000=roots(pV1000)
% Part d
disp('Part d')
pD=polyder(p);
xr=roots(pD); 
s=xr>0&xr<11; 
xmax=xr(s)   
Vmax=polyval(p,xmax)

%13
p1=[1 18 0];
p2=[-2 45];
p=conv(p1, p2);
x=5:0.1:35;
V=polyval(p,x);
plot(x,V)
xlabel('x (in)')
ylabel('V (in^3)')
pder=polyder(p);
xVmaxmax=roots(pder)
Vmax=polyval(p,xVmaxmax(1))

%14
function p =quiz7_chapter8_2(p1,p2)
na=length(p1); nb=length(p2);
if nb > na
    d=p1; p1=p2;
    clear b
    p2=d;
    nd=na; na=nb; nb=nd;
end
for k=1:nb
    p(k)=0;
    for i=1:k
        p(k)=p(k)+p1(i)*p2(k+1-i);
    end
end
for k=nb+1:na
    p(k)=0;
    for i=k-nb+1:k
        p(k)=p(k)+p1(i)*p2(k+1-i);
    end
end
for k=na+1:na+nb-1
    p(k)=0;
    for i=k-nb+1:na
        p(k)=p(k)+p1(i)*p2(k+1-i);
    end
end
end


%15
clear, clc
function p=polyadd(p1,p2,operation)
np1=length(p1);
np2=length(p2);
if np1>np2
    nd=np1-np2;
    p2add(1:nd)=0;
    p2=[p2add p2];
end
if np2>np1
    nd=np2-np1;
    p1add(1:nd)=0;
    p1=[p1add p1];
end
switch operation
    case 'add'
        p=p1+p2;
    case 'sub'
        p=p1-p2;
end
end

%16
function p = polymult(p1,p2)
na=length(p1); nb=length(p2);
if nb > na
    d=p1; p1=p2;
    clear b
    p2=d;
    nd=na; na=nb; nb=nd;
end
for k=1:nb
    p(k)=0;
    for i=1:k
        p(k)=p(k)+p1(i)*p2(k+1-i);
    end
end
for k=nb+1:na
    p(k)=0;
    for i=k-nb+1:k
        p(k)=p(k)+p1(i)*p2(k+1-i);
    end
end
for k=na+1:na+nb-1
    p(k)=0;
    for i=k-nb+1:na
        p(k)=p(k)+p1(i)*p2(k+1-i);
    end
end
end

%17
function [x, y, W] = maxormin(a,b,c)
x=-b/(2*a);
y=a*x^2+b*x+c;
W=2;
if a<0
    W=1;
end
end
%18
R=11; V=2500;
h=0:0.2:11;
p=[-1 -R R^2 R^3];
Vh=polyval(p,h)*pi/3;
plot(h,Vh)
xlabel('h (in.)')
ylabel('Volume (in^3)')
disp('Part C')
hV500=[-1 -R R^2 R^3-3*V/pi];
h500=roots(hV500)
disp('Part D')
Vpd=polyder(p);
rVmax=roots(Vpd)
Vmax=polyval(p,rVmax(2))*pi/3

%19

Y=@ (x) 1.5*(x-3)^2+1;
p=[2.25 -27 109 -168 90];
x=3:0.05:6;
d2=polyval(p,x);
d=sqrt(d2);
% Part(b)
plot(x,d)
xlabel('x')
ylabel('y')
pQ=[2.25 -27 109 -168 90-28^2];
disp('Part C')
xQd28=roots(pQ)
yQd28=Y(xQd28(1))
yQd28=Y(xQd28(4))
% Part(d)
disp('Part D')
pder=polyder(p);
xQdmin=roots(pder)
yQmin1=Y(xQdmin(1))
yQmin2=Y(xQdmin(3))
Qdmin1=sqrt(polyval(p,xQdmin(1)))
Qdmin2=sqrt(polyval(p,xQdmin(3)))



%20
x=[-5 -4 -1 1 4 6 9 10];
y=[12 10 6 2 -3 -6 -11 -12];
p1=polyfit(x,y,1)
xplot=linspace(2,15,100);
yplot=polyval(p1,xplot);
plot(x,y,'ok',xplot,yplot,'k')

%21
hsi=[-1000 0 3000 8000 15000 22000 28000];
Tsi=[213.9 212 206.2 196.2 184.4 172.6 163.1];
p=polyfit(hsi,Tsi,1)
T5000=polyval(p,5000)
xplot=linspace(0,7900,100);
yplot=polyval(p,xplot);
plot(hsi,Tsi,'ok',xplot,yplot,'k')
xlabel('h (m)')
ylabel('T (deg C)')

%22
Y=[1815 1845 1875 1905 1935 1965];
t=Y-1800;
Pop=[8.3 19.7 44.4 83.3 127.1 190.9];
p=polyfit(t,Pop,2)
tp=linspace(1815,1965,100);
Pplot=polyval(p,tp-1800);
plot(Y,Pop,'o',tp,Pplot)
xlabel('Year')
ylabel('Population (Millions)') 
Pop1915=polyval(p,1915-1800)

%23
t=[1:6];
NB = [2 4.5 7.5 15 31 64]*1000;
p=polyfit(t,log(NB),1);
m=p(1)
b=exp(p(2))
tp=linspace(1,6,100);
F=@ (x) b*exp(m*x);
NBp=F(tp);
plot(t,NB,'o',tp,NBp)
xlabel('t (hr)')
ylabel('NB')
legend('Data','Model',0)
NB45=F(4.5)


%24
C=254;
w=[1:2:13];
H = [22 51 127 202 227 248 252];
y=C./H-1;
p=polyfit(w,log(y),1);
B=-p(1)
A=exp(p(2))
wp=linspace(1,13,100);
F=@ (x) C./(1+A*exp(-B*x));
Hp=F(wp);
plot(w,H,'o',wp,Hp)
xlabel('t (Week)')
ylabel('Height (cm)')
legend('Data','Model',0) H6=F(6)


%25
w=[1:2:13];
H = [22 51 127 202 227 248 252];
% Part (a)
disp('Part (a)')
p=polyfit(w,H,3);
wp=linspace(1,13,100);
Hp=polyval(p,wp);
plot(w,H,'o',wp,Hp)
xlabel('t (Week)')
ylabel('Height (cm)')
legend('Data','Model',0)
title('part (a)')
H6_Part_a=polyval(p,6)
% Part (b)
disp('Part (b)')
wp=linspace(1,13,100);
HpLin=interp1(w,H,wp,'linear');
HpSpl=interp1(w,H,wp,'spline');
figure
plot(w,H,'o',wp,HpLin,wp,HpSpl)
xlabel('t (Week)')
ylabel('Height (cm)')
legend('Data','Linear Interpolation','Spline'
Interpolation',0)
title('part (b)')
H6_Part_bLinear=interp1(w,H,6,'linear')
H6_Part_bSpline=interp1(w,H,6,'spline')


%26
x=[1 2.2 3.7 6.4 9 11.5 14.2 17.8 20.5 23.2];
y=[12 9 6.6 5.5 7.2 9.2 9.6 8.5 6.5 2.2];
p1=polyfit(x,y,1);
xplot=linspace(0,24,100);
yplot=polyval(p1,xplot);
plot(x,y,'ok',xplot,yplot,'k','linewidth',2,'markersize',8)
xlabel('x','fontsize',18)
ylabel('y','fontsize',18)
%26
x=[1 2.2 3.7 6.4 9 11.5 14.2 17.8 20.5 23.2];
y=[12 9 6.6 5.5 7.2 9.2 9.6 8.5 6.5 2.2];
p1=polyfit(x,y,2);
xplot=linspace(0,24,100);
yplot=polyval(p1,xplot);
plot(x,y,'ok',xplot,yplot,'k','linewidth',2,'markersize',8)
xlabel('x','fontsize',18) 
ylabel('y','fontsize',18)

%27
h=0:3000:33000;
Den=[1.2 0.91 0.66 0.47 0.31 0.19 0.12 0.075 0.046 0.029 0.018 0.011];
plot(h, Den,'ok')
xlabel('\fontsize{16}Height (m)')
ylabel('\fontsize{16}Density (kg/m^3)')
figure
semilogx(h, Den,'ok')
xlabel('\fontsize{16}Height (m)')
ylabel('\fontsize{16}Density (kg/m^3)')
figure
semilogy(h, Den,'ok')
xlabel('\fontsize{16}Height (m)')
ylabel('\fontsize{16}Density (kg/m^3)')
figure
loglog(h, Den,'ok')
xlabel('\fontsize{16}Height (m)')
ylabel('\fontsize{16}Density (kg/m^3)')

%28
x=[0.5 2.4 3.2 4.9 6.5 7.8];
y=[0.8 9.3 37.97 68.2 155 198];
[b, m]=powerfit(x,y)
xp=linspace(0.5,7.8,50);
yp=b*xp.^m;
plot(x,y,'ok',xp,yp,'k','linewidth',2,'markersize',12)
xlabel('x','fontsize',18)
ylabel('y','fontsize',18)


function [b,m]=powerfit(x,y)
p=polyfit(log(x),log(y),1);
m=p(1);
b=exp(p(2));
end

%29
F=[0 0.6 0.9 1.16 1.18 1.19 1.24 1.48 1.92 3.12 4.14 5.34 6.22 7.12 7.86 8.42];
E=(0:1.2:18);
%Part (a)
disp('Part (a)')
p1=polyfit(E,F,4);
Eplot=linspace(0,18,100);
Fplot=polyval(p1,Eplot);
plot(E,F,'ok',Eplot,Fplot,'k','linewidth',2,'markersize',8)
xlabel('Elongation (in.)','fontsize',18)
ylabel('Force (lb)','fontsize',18)
title('Part (a)')
ForceE115=polyval(p1,11.5)
%Part (b)
disp('Part (b)')
Eplot=linspace(0,18,100);
Fplot=interp1(E,F,Eplot,'spline');
figure
plot(E,F,'ok',Eplot,Fplot,'k','linewidth',2,'markersize',8)
xlabel('Elongation (in.)','fontsize',18)
ylabel('Force (lb)','fontsize',18)
title('Part (b)') 
ForceE115=interp1(E,F,11.5,'spline')

%30
F=[0 0.6 0.9 1.16 1.18 1.19 1.24 1.48 1.92 3.12 4.14 5.34 
6.22 7.12 7.86 8.42];
E=0:1.2:18;
%Part (a)
disp('Part (a)')
p1=polyfit(E,F,4);
Eplot=linspace(0,18,100);
Fplot=polyval(p1,Eplot);
plot(E,F,'ok',Eplot,Fplot,'k','linewidth',2,'markersize',8)
xlabel('Elongation (in.)','fontsize',18)
ylabel('Force (lb)','fontsize',18)
title('Part (a)')
ForceE115=polyval(p1,11.5)
%Part (b)
disp('Part (b)')
Eplot=linspace(0,18,100);
Fplot=interp1(E,F,Eplot,'spline');
figure
plot(E,F,'ok',Eplot,Fplot,'k','linewidth',2,'markersize',8)
xlabel('Elongation (in.)','fontsize',18)
ylabel('Force (lb)','fontsize',18)
title('Part (b)') ForceE115=interp1(E,F,11.5,'spline')


%32
t=[1 3 4 7 8 10];
P=[2.1 4.6 5.4 6.1 6.4 6.6];
overt=1./t;
Pover=1./P;
a=polyfit(overt,Pover,1);
m=1/a(2) 
b=m*a(1)
tp=1:0.2:10;
Pp=m*tp./(b+tp);
%plot(t,P,'o',tp,Pp)
plot(t,P,'ok',tp,Pp,'k','linewidth',2,'markersize',14)
xlabel('t','fontsize',18)
ylabel('P','fontsize',18)

%34
F=[0 0.6 0.9 1.16 1.18 1.19 1.24 1.48 1.92 3.12 4.14 5.34 
6.22 7.12 7.86 8.42];
E=0:1.2:18;
%Part (a)
disp('Part (a)')
p1=polyfit(E,F,4);
Eplot=linspace(0,18,100);
Fplot=polyval(p1,Eplot);
plot(E,F,'ok',Eplot,Fplot,'k','linewidth',2,'markersize',8)
xlabel('Elongation (in.)','fontsize',18)
ylabel('Force (lb)','fontsize',18)
title('Part (a)')
ForceE115=polyval(p1,11.5)
%Part (b)
disp('Part (b)')
Eplot=linspace(0,18,100);
Fplot=interp1(E,F,Eplot,'spline');
figure
plot(E,F,'ok',Eplot,Fplot,'k','linewidth',2,'markersize',8)
xlabel('Elongation (in.)','fontsize',18)
ylabel('Force (lb)','fontsize',18)
title('Part (b)') ForceE115=interp1(E,F,11.5,'spline')


%35
I0=5;
L=[0.5 1.2 1.7 2.2 4.5 6]*1E-2;
IT = [4.2 4.0 3.8 3.6 2.9 2.5];
p=polyfit(L,log(IT),1);
beta=-p(1)
b=exp(p(2))
R=1-sqrt(b/I0)
n=(1+R^2)/(1-R^2)
Lp=linspace(0.005,0.06,100);
F=@ (x) I0*(1-R)^2*exp(-beta*x);
ITp=F(Lp);
plot(L,IT,'o',Lp,ITp)
xlabel('L (cm)')
ylabel('IT (Watts/m^2)') legend('Data','Model',0)


