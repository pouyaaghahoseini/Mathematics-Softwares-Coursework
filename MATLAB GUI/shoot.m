function [goodxs,goodys] = shoot(velocity,angle)
%SHOOT Summary of this function goes here
%   Detailed explanation goes here
time=0:0.01:1000000;
x=0+velocity*cosd(angle)*time+1/2*0*time.^2;
y=0+velocity*sind(angle)*time+1/2*(-9.81)*time.^2;
goodvalues=find(y>=0);
goodys=y(goodvalues);
goodxs=x(goodvalues);
comet(goodxs,goodys)
end

