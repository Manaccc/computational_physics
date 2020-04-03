clear;clc;close all;
x=-0.2:0.1:1;
y=2*x.^5-3*x.^3-x.^2-9;
xq = linspace(-0.2,1);
figure
hold on;
plot(x,y,'o')
%����ʽ���
p=polyfit(x,y,5);
yp=polyval(p,xq);
plot(xq,yp,'r')
%��ֵ���
yq = interp1(x,y,xq,'pchip');
plot(xq,yq,':.b')
legend('data','linear fit','Spline Interpolation')

%�������ƫ��0.1*rand(1,13)
y=2*x.^5-3*x.^3-x.^2-9+0.1*rand(1,13);
figure
hold on;
plot(x,y,'o')
%����ʽ���
p=polyfit(x,y,5);
yp=polyval(p,xq);
plot(xq,yp,'r')
%��ֵ���
yq = interp1(x,y,xq,'pchip');
plot(xq,yq,':.b')
legend('data','linear fit','Spline Interpolation')