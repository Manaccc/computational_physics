clear;close all;clc;
x=[0.3871 0.7233 1.0000 1.5237 5.2028 9.5388];
y=[0.2408 0.6152 1.0000 1.8808 11.862 29.475];
%�ݺ������
subplot(2,2,1)
p=fit(x',y','Power1');
plot(p,x,y,'o')
legend('Data','Power Fit')
title('Power Fit')
%���ζ���ʽ���
subplot(2,2,2)
p=fit(x',y','poly3');
plot(p,x,y,'o')
legend('Data','Polynomial Fit')
title('Polynomial Fit')
%1���Ҷ�������
subplot(2,2,3)
p=fit(x',y','fourier1');
plot(p,x,y,'o')
legend('Data','Fourier Fit')
title('Fourier Fit')
%ָ�����
subplot(2,2,4)
p=fit(x',y','exp2');
plot(p,x,y,'o')
legend('Data','Exponential Fit')
title('Exponential Fit')